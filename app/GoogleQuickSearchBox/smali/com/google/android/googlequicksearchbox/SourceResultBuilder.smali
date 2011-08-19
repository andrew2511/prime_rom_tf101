.class public Lcom/google/android/googlequicksearchbox/SourceResultBuilder;
.super Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;
.source "SourceResultBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder",
        "<",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBookmarkFilter:Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;

.field private final mSource:Lcom/google/android/googlequicksearchbox/Source;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2
    .parameter "source"
    .parameter "userQuery"
    .parameter "cursor"

    .prologue
    .line 34
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 35
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 36
    new-instance v0, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;-><init>(Lcom/google/android/googlequicksearchbox/Source;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mBookmarkFilter:Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;

    .line 37
    return-void
.end method

.method private isQsbApp(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 52
    const-string v0, "content://applications/applications/com.google.android.googlequicksearchbox/com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 2
    .parameter "userQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 42
    .local v0, result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    return-object v0
.end method

.method public getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    return-object v0
.end method

.method public isHistory()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcut()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->isQsbApp(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mBookmarkFilter:Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
