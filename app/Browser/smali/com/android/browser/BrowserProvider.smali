.class public Lcom/android/browser/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserProvider$ResultsCursor;,
        Lcom/android/browser/BrowserProvider$MySuggestionCursor;,
        Lcom/android/browser/BrowserProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mMaxSuggestionLongSize:I

.field private mMaxSuggestionShortSize:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

.field private mResultsCursorLock:Ljava/lang/Object;

.field private mSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "bookmarks"

    aput-object v1, v0, v4

    const-string v1, "searches"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "bookmark"

    aput-object v1, v0, v3

    const-string v1, "user_entered"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 102
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 129
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 835
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/browser/BrowserProvider;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/browser/BrowserProvider;->mMaxSuggestionLongSize:I

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/browser/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/browser/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "bookmarksOnly"

    .prologue
    .line 897
    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 934
    :goto_0
    return-object v0

    .line 900
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 901
    .local v10, like:Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 903
    :cond_2
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 904
    .local v4, myArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 905
    move-object v3, p1

    .line 918
    .local v3, suggestSelection:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/browser/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "visits DESC, date DESC"

    iget v8, p0, Lcom/android/browser/BrowserProvider;->mMaxSuggestionLongSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 922
    .local v9, c:Landroid/database/Cursor;
    if-nez p3, :cond_3

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 923
    :cond_3
    new-instance v0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    .end local v3           #suggestSelection:Ljava/lang/String;
    .end local v4           #myArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 908
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 909
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 910
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 912
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v10, v0, v1

    .line 913
    iget-object v4, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 914
    .restart local v4       #myArgs:[Ljava/lang/String;
    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .restart local v3       #suggestSelection:Ljava/lang/String;
    goto/16 :goto_1

    .line 926
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    if-eqz v4, :cond_6

    array-length v0, v4

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 928
    iget-object v0, p0, Lcom/android/browser/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v12

    .line 929
    .local v12, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v12, :cond_6

    invoke-interface {v12}, Lcom/android/browser/search/SearchEngine;->supportsSuggestions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 930
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v12, v0, v1}, Lcom/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 931
    .local v11, sc:Landroid/database/Cursor;
    new-instance v0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p0, v9, v11, v1}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 934
    .end local v11           #sc:Landroid/database/Cursor;
    .end local v12           #searchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_6
    new-instance v0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "cr"

    .prologue
    .line 183
    const-string v7, "android-google"

    .line 184
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 185
    .local v6, legacyClientIdCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 189
    .local v8, searchClientIdCursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'search_client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 203
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_1
    if-eqz v8, :cond_2

    .line 207
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_2
    :goto_1
    return-object v7

    .line 194
    :cond_3
    :try_start_1
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ms-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 203
    if-eqz v6, :cond_4

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_4
    if-eqz v8, :cond_2

    .line 207
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_5
    if-eqz v8, :cond_6

    .line 207
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 214
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 217
    .local v5, lastCharLoc:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/browser/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 220
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 221
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_0

    .line 222
    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 223
    move v5, v2

    .line 225
    move v3, v2

    .local v3, j:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 226
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 227
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_2

    .line 228
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 235
    move v2, v3

    .line 219
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_1
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 225
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_4

    .line 243
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 245
    :cond_4
    return-object v7
.end method

.method private static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1134
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1139
    :goto_0
    return-object v1

    .line 1135
    :cond_0
    sget-object v1, Lcom/android/browser/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1136
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1137
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 1139
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1017
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1018
    .local v15, match:I
    const/4 v5, -0x1

    if-eq v15, v5, :cond_0

    const/16 v5, 0x14

    if-ne v15, v5, :cond_1

    .line 1019
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1023
    :cond_1
    const/16 v5, 0xa

    if-ne v15, v5, :cond_7

    const/4 v5, 0x1

    move v14, v5

    .line 1024
    .local v14, isBookmarkTable:Z
    :goto_0
    const/4 v13, 0x0

    .line 1026
    .local v13, id:Ljava/lang/String;
    if-nez v14, :cond_2

    const/16 v5, 0xb

    if-ne v15, v5, :cond_4

    .line 1027
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .local v16, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1029
    const-string v5, "( "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    const-string v5, " ) AND "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #id:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 1034
    .restart local v13       #id:Ljava/lang/String;
    const-string v5, "_id = "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1039
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1042
    .local v4, cr:Landroid/content/ContentResolver;
    if-eqz v14, :cond_6

    .line 1043
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "bookmark"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1046
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1047
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1052
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1055
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_6
    sget-object v5, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v6, v15, 0xa

    aget-object v5, v5, v6

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1056
    .local v10, count:I
    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1057
    return v10

    .line 1023
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v10           #count:I
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #isBookmarkTable:Z
    :cond_7
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 940
    sget-object v1, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 941
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 958
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 943
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 955
    :goto_0
    return-object v1

    .line 946
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 949
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 952
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 955
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    .line 964
    const/4 v1, 0x0

    .line 965
    .local v1, isBookmarkTable:Z
    iget-object v6, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 967
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 968
    .local v2, match:I
    const/4 v5, 0x0

    .line 969
    .local v5, uri:Landroid/net/Uri;
    packed-switch v2, :pswitch_data_0

    .line 994
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 972
    :pswitch_0
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 974
    .local v3, rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_0

    .line 975
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 978
    :cond_0
    const/4 v1, 0x1

    .line 997
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 998
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 984
    .end local v3           #rowID:J
    :pswitch_1
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 986
    .restart local v3       #rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_1

    .line 987
    sget-object v6, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 1000
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1005
    if-eqz v1, :cond_3

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1008
    iget-object v6, p0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1010
    :cond_3
    return-object v5

    .line 969
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 392
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 393
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v2, v5

    .line 396
    .local v2, xlargeScreenSize:Z
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    move v1, v5

    .line 400
    .local v1, isPortrait:Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 401
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/browser/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 402
    iput v7, p0, Lcom/android/browser/BrowserProvider;->mMaxSuggestionShortSize:I

    .line 407
    :goto_2
    new-instance v3, Lcom/android/browser/BrowserProvider$DatabaseHelper;

    invoke-direct {v3, v0}, Lcom/android/browser/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 408
    new-instance v3, Landroid/app/backup/BackupManager;

    invoke-direct {v3, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 423
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 424
    return v5

    .end local v1           #isPortrait:Z
    .end local v2           #xlargeScreenSize:Z
    :cond_0
    move v2, v6

    .line 393
    goto :goto_0

    .restart local v2       #xlargeScreenSize:Z
    :cond_1
    move v1, v6

    .line 396
    goto :goto_1

    .line 404
    .restart local v1       #isPortrait:Z
    :cond_2
    iput v7, p0, Lcom/android/browser/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 405
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/browser/BrowserProvider;->mMaxSuggestionShortSize:I

    goto :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 856
    sget-object v5, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 857
    .local v15, match:I
    const/4 v5, -0x1

    if-ne v15, v5, :cond_0

    .line 858
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    move-object v5, v0

    monitor-enter v5

    .line 863
    const/16 v6, 0x14

    if-ne v15, v6, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    move-object/from16 v16, v0

    .line 865
    .local v16, results:Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserProvider;->mResultsCursor:Lcom/android/browser/BrowserProvider$ResultsCursor;

    .line 866
    monitor-exit v5

    move-object/from16 v5, v16

    .line 891
    .end local v16           #results:Landroid/database/Cursor;
    .end local p2
    :goto_0
    return-object v5

    .line 868
    .restart local p2
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const/16 v5, 0x14

    if-eq v15, v5, :cond_2

    const/16 v5, 0x15

    if-ne v15, v5, :cond_4

    .line 872
    :cond_2
    const/16 v5, 0x15

    if-ne v15, v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserProvider;->doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 868
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 872
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 875
    :cond_4
    const/4 v7, 0x0

    .line 876
    .local v7, projection:[Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_5

    .line 877
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    .line 878
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v7

    move v3, v6

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    const-string v6, "_id AS _id"

    aput-object v6, v7, v5

    .line 882
    :cond_5
    const/16 v17, 0x0

    .line 883
    .local v17, whereClause:Ljava/lang/String;
    const/16 v5, 0xa

    if-eq v15, v5, :cond_6

    const/16 v5, 0xb

    if-ne v15, v5, :cond_7

    .line 884
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 887
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v8, v15, 0xa

    aget-object v6, v6, v8

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 890
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v14

    .line 891
    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 1065
    .local v13, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1066
    .local v15, match:I
    const/4 v6, -0x1

    if-eq v15, v6, :cond_0

    const/16 v6, 0x14

    if-ne v15, v6, :cond_1

    .line 1067
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1070
    :cond_1
    const/16 v6, 0xa

    if-eq v15, v6, :cond_2

    const/16 v6, 0xb

    if-ne v15, v6, :cond_4

    .line 1071
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .local v17, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1073
    const-string v6, "( "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const-string v6, " ) AND "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1078
    .local v14, id:Ljava/lang/String;
    const-string v6, "_id = "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1083
    .end local v14           #id:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1088
    .local v5, cr:Landroid/content/ContentResolver;
    const/16 v6, 0xa

    if-eq v15, v6, :cond_5

    if-nez v15, :cond_7

    .line 1089
    :cond_5
    const/4 v11, 0x0

    .line 1093
    .local v11, changingBookmarks:Z
    const-string v6, "bookmark"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1094
    const/4 v11, 0x1

    .line 1112
    :cond_6
    :goto_0
    if-eqz v11, :cond_7

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1117
    .end local v11           #changingBookmarks:Z
    :cond_7
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v15, 0xa

    aget-object v6, v6, v7

    move-object v0, v13

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1118
    .local v16, ret:I
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1119
    return v16

    .line 1095
    .end local v16           #ret:I
    .restart local v11       #changingBookmarks:Z
    :cond_8
    const-string v6, "title"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "url"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_9
    const-string v6, "_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1101
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "bookmark"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_id"

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1105
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1106
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    move v11, v6

    .line 1108
    :cond_a
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1106
    :cond_b
    const/4 v6, 0x0

    move v11, v6

    goto :goto_1
.end method
