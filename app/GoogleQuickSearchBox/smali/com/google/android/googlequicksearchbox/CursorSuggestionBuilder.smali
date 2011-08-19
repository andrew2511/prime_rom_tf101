.class public abstract Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;
.super Ljava/lang/Object;
.source "CursorSuggestionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mCursor:Landroid/database/Cursor;

.field private final mFormatCol:I

.field private final mIcon1Col:I

.field private final mIcon2Col:I

.field private final mRefreshSpinnerCol:I

.field private final mText1Col:I

.field private final mText2Col:I

.field private final mText2UrlCol:I

.field private final mUserQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "userQuery"
    .parameter "cursor"

    .prologue
    .line 74
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mUserQuery:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    .line 77
    const-string v0, "suggest_format"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mFormatCol:I

    .line 78
    const-string v0, "suggest_text_1"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mText1Col:I

    .line 79
    const-string v0, "suggest_text_2"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mText2Col:I

    .line 80
    const-string v0, "suggest_text_2_url"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mText2UrlCol:I

    .line 81
    const-string v0, "suggest_icon_1"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mIcon1Col:I

    .line 82
    const-string v0, "suggest_icon_2"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mIcon2Col:I

    .line 83
    const-string v0, "suggest_spinner_while_refreshing"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mRefreshSpinnerCol:I

    .line 84
    return-void
.end method

.method private formatString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "toFormat"

    .prologue
    .line 256
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    if-eqz p1, :cond_0

    const-string v0, "html"

    iget v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mFormatCol:I

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private getIntentExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v0, "suggest_intent_query"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v0, "suggest_log_type"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build(I)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 6
    .parameter "maxCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mUserQuery:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v4

    .line 123
    :goto_0
    return-object v4

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 112
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    .local v0, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v3, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 115
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 116
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getCurrentSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    .line 117
    .local v2, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v3           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 123
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    :cond_3
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mUserQuery:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v4

    goto :goto_0
.end method

.method protected abstract createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)TS;"
        }
    .end annotation
.end method

.method protected getColumnIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "colName"

    .prologue
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const/4 v3, -0x1

    .line 225
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    move v1, v3

    .line 231
    :goto_0
    return v1

    .line 227
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorSuggestionBuilder"

    const-string v2, "getColumnIndex() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 231
    goto :goto_0
.end method

.method protected getCurrentSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 87
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->source(Lcom/google/android/googlequicksearchbox/Source;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getText1()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getText2()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getText2Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2Url(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIcon1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIcon2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon2(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shortcutId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->isSpinnerWhileRefreshing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->spinnerWhileRefreshing(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIntentDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIntentExtraData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->isShortcut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isShortcut(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->isHistory()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->extras(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;
.end method

.method protected getIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    iget v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mIcon1Col:I

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    iget v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mIcon2Col:I

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v2, "suggest_intent_action"

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 184
    :goto_0
    return-object v2

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    .line 184
    .local v1, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getIntentDataString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v3, "suggest_intent_data"

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, data:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    .line 199
    .local v2, suggestionSource:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getDefaultIntentData()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_0
    if-eqz v0, :cond_1

    .line 204
    const-string v3, "suggest_intent_data_id"

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .end local v1           #id:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringOrNull(I)Ljava/lang/String;
    .locals 4
    .parameter "col"

    .prologue
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 251
    :goto_0
    return-object v1

    .line 243
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    move-object v1, v3

    .line 244
    goto :goto_0

    .line 247
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.CursorSuggestionBuilder"

    const-string v2, "getString() failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 251
    goto :goto_0
.end method

.method protected getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "colName"

    .prologue
    .line 270
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, col:I
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;
.end method

.method protected getText1()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 153
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    iget v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mText1Col:I

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->formatString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getText2()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 157
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    iget v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mText2Col:I

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->formatString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    iget v0, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mText2UrlCol:I

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract isHistory()Z
.end method

.method protected abstract isShortcut()Z
.end method

.method protected isSpinnerWhileRefreshing()Z
    .locals 2

    .prologue
    .line 173
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    const-string v0, "true"

    iget v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mRefreshSpinnerCol:I

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 133
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    .local p0, this:Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;,"Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
