.class public Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;
.super Ljava/lang/Object;
.source "BookmarkSearchResultsFilter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionFilter;


# static fields
.field private static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern; = null

.field static final BOOKMARK_SUGGEST_URI:Ljava/lang/String; = "content://browser/bookmarks/search_suggest_query"


# instance fields
.field final mFiltering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Source;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    const-string v0, "content://browser/bookmarks/search_suggest_query"

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->mFiltering:Z

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->mFiltering:Z

    goto :goto_0
.end method

.method private static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inUrl"

    .prologue
    .line 79
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 80
    .local v2, colon:I
    const/4 v0, 0x1

    .line 81
    .local v0, allLower:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 83
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    .end local v1           #ch:C
    :cond_0
    const-string v4, "http://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    :cond_1
    :goto_1
    return-object p0

    .line 86
    .restart local v1       #ch:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v0, v4

    .line 87
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v1           #ch:C
    :cond_4
    const-string v4, "http:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    :cond_5
    const-string v4, "http:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 97
    :cond_6
    const-string v4, "/"

    const-string v5, "//"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 98
    :cond_7
    const-string v4, ":"

    const-string v5, "://"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static isUrlLikeByBrowserHeuristics(Ljava/lang/String;)Z
    .locals 2
    .parameter "inUrl"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, url:Ljava/lang/String;
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    const/4 v1, 0x1

    .line 111
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    .line 44
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->mFiltering:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 55
    :goto_0
    return v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, intentData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/BookmarkSearchResultsFilter;->isUrlLikeByBrowserHeuristics(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
