.class public Lcom/android/browser/search/SearchEngineInfo;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "SearchEngineInfo"

    sput-object v0, Lcom/android/browser/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v9, 0x3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/browser/search/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 64
    .local v5, res:Landroid/content/res/Resources;
    const-string v6, "array"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, id_data:I
    if-nez v1, :cond_0

    .line 66
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No resources found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 68
    :cond_0
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    .line 70
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 71
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No data found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_1
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    .line 74
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid number of fields - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_2
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has an empty search URI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 83
    .local v4, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, language:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 85
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, language_str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v9

    const-string v8, "{language}"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 92
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v10

    const-string v8, "{language}"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 96
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v0, v6, v11

    .line 97
    .local v0, enc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 98
    const-string v0, "UTF-8"

    .line 99
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aput-object v0, v6, v11

    .line 103
    :cond_5
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v9

    const-string v8, "{inputEncoding}"

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 105
    iget-object v6, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v10

    const-string v8, "{inputEncoding}"

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 107
    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "templateUri"
    .parameter "query"

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v5

    .line 164
    :goto_0
    return-object v2

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v2, v3

    .line 161
    .local v1, enc:Ljava/lang/String;
    :try_start_0
    const-string v2, "{searchTerms}"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 163
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/android/browser/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured when encoding query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 164
    goto :goto_0
.end method

.method private searchUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private suggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/browser/search/SearchEngineInfo;->searchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/browser/search/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/browser/search/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/browser/search/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/browser/search/SearchEngineInfo;->suggestUri()Ljava/lang/String;

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
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngineInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
