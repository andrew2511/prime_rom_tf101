.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
.super Ljava/lang/Object;
.source "GenieSuggestionFactory.java"


# instance fields
.field private final mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/Maps;)V
    .locals 0
    .parameter "maps"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    .line 52
    return-void
.end method

.method private createBusinessListingSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;ZLcom/google/android/googlequicksearchbox/google/Maps;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 10
    .parameter "entry"
    .parameter "logData"
    .parameter "fresh"
    .parameter "maps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 169
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 170
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, cid:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "is_business_listing"

    aput-object v6, v5, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v7, "business_rating"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->fromKeyValuePairs([Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v1

    .line 175
    .local v1, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    invoke-direct {p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->makeBusinessListingText2(Lorg/json/JSONArray;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 176
    .local v3, text2:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v0, v5}, Lcom/google/android/googlequicksearchbox/google/Maps;->getBusinessUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 177
    .local v2, intentData:Landroid/net/Uri;
    invoke-virtual {p2, v8}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 179
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    const v6, 0x7f02001f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/google/android/googlequicksearchbox/google/Maps;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentComponent(Landroid/content/ComponentName;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->extras(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v5

    return-object v5
.end method

.method private createNavSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 5
    .parameter "entry"
    .parameter "logData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    .line 125
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 126
    .local v0, title:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 127
    .local v1, url:Landroid/net/Uri;
    invoke-virtual {p2, v4}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 128
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2Url(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const v3, 0x7f020025

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    return-object v2
.end method

.method private createQuerySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 4
    .parameter "entry"
    .parameter "logData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 114
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    return-object v1
.end method

.method private createSearchHistorySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 4
    .parameter "entry"
    .parameter "logData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 144
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    return-object v1
.end method

.method public static getBusinessRating(Lcom/google/android/googlequicksearchbox/Suggestion;)F
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 201
    if-nez p0, :cond_0

    move-object v0, v5

    .line 202
    .local v0, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :goto_0
    if-nez v0, :cond_1

    move-object v2, v5

    .line 203
    .local v2, rating:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    .line 205
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 210
    :goto_2
    return v3

    .line 201
    .end local v0           #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .end local v2           #rating:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 202
    .restart local v0       #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :cond_1
    const-string v3, "business_rating"

    invoke-interface {v0, v3}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 206
    .restart local v2       #rating:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 207
    goto :goto_2

    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    move v3, v4

    .line 210
    goto :goto_2
.end method

.method public static isBusinessListing(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 194
    if-nez p0, :cond_0

    move-object v0, v3

    .line 195
    .local v0, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :goto_0
    if-nez v0, :cond_1

    move-object v1, v3

    .line 197
    .local v1, isListing:Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_2
    return v2

    .line 194
    .end local v0           #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .end local v1           #isListing:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 195
    .restart local v0       #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :cond_1
    const-string v2, "is_business_listing"

    invoke-interface {v0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 197
    .restart local v1       #isListing:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2
.end method

.method private makeBusinessListingText2(Lorg/json/JSONArray;Z)Ljava/lang/CharSequence;
    .locals 5
    .parameter "entry"
    .parameter "mFresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 156
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, distance:Ljava/lang/String;
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, description:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public fromExtraData(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .locals 6
    .parameter "extraDataStr"
    .parameter "userQuery"

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, extraData:Lorg/json/JSONObject;
    const-string v3, "log"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->fromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {v2, p2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putQuery(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #extraData:Lorg/json/JSONObject;
    :cond_0
    move-object v3, v2

    .line 93
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 92
    .local v0, ex:Lorg/json/JSONException;
    const-string v3, "QSB.GenieSuggestionFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing extra data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public fromJson(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;Z)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 5
    .parameter "entry"
    .parameter "logData"
    .parameter "fresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    if-nez p1, :cond_0

    move-object v1, v4

    .line 72
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 61
    .local v0, entryType:I
    sparse-switch v0, :sswitch_data_0

    .line 71
    const-string v1, "QSB.GenieSuggestionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 72
    goto :goto_0

    .line 63
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createQuerySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_0

    .line 65
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createNavSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_0

    .line 67
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createBusinessListingSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;ZLcom/google/android/googlequicksearchbox/google/Maps;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_0

    .line 69
    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createSearchHistorySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x17 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;
    .locals 5
    .parameter "logData"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, extraData:Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #extraData:Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .restart local v1       #extraData:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "log"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->toJson()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 103
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 104
    .local v0, ex:Lorg/json/JSONException;
    const-string v2, "QSB.GenieSuggestionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding log data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v0           #ex:Lorg/json/JSONException;
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
