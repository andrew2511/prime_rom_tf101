.class public Lcom/layar/data/category/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/category/CategoryManager$RefreshTask;
    }
.end annotation


# static fields
.field public static final CATEGORIES_URL:Ljava/lang/String; = "/category/api/all/<lang>/"

.field public static final DEFAULT_ICONS_BASE_URL:Ljava/lang/String; = "http://dev.layar.com/static/category_icons/"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRefreshTask:Lcom/layar/data/category/CategoryManager$RefreshTask;

.field private final mRefreshTaskSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    const-class v1, Lcom/layar/data/category/CategoryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/category/CategoryManager;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTaskSync:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/category/CategoryManager;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTaskSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/data/category/CategoryManager;Lcom/layar/data/category/CategoryManager$RefreshTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTask:Lcom/layar/data/category/CategoryManager$RefreshTask;

    return-void
.end method

.method public static getCategoryFilePath(II)Ljava/lang/String;
    .locals 2
    .parameter "category"
    .parameter "size"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "icon_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/category/CategoryManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public categoryCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    .line 109
    invoke-static {}, Lcom/layar/provider/CategoriesAlias;->projection()[Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v5, v5, Lcom/layar/provider/CategoriesAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 112
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 113
    return v6
.end method

.method public categoryCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    .line 119
    invoke-static {}, Lcom/layar/provider/CategoriesAlias;->projection()[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v5, v5, Lcom/layar/provider/CategoriesAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public categoryList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v6, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/category/Category;>;"
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    .line 82
    invoke-static {}, Lcom/layar/provider/CategoriesAlias;->projection()[Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v5, v5, Lcom/layar/provider/CategoriesAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 84
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 88
    return-object v6

    .line 85
    :cond_0
    invoke-static {v7}, Lcom/layar/provider/CategoriesAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/category/Category;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public downloadAndSaveCategories(Z)Lcom/layar/data/category/CategoriesResponse;
    .locals 9
    .parameter "ignoreCounts"

    .prologue
    const/4 v8, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoryManager;->downloadCategories(Z)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v4

    .line 131
    .local v4, response:Lcom/layar/data/category/CategoriesResponse;
    invoke-virtual {v4}, Lcom/layar/data/category/CategoriesResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    iget-object v6, v4, Lcom/layar/data/category/CategoriesResponse;->baseURL:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/layar/data/category/CategoryManager;->setCategoryBaseURL(Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 138
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/layar/data/category/CategoryManager;->TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " downloadAndSaveCategories"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-static {v3, v6}, Lcom/layar/provider/ResolverHelper;->startTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v2

    .line 139
    .local v2, profile:Lcom/layar/util/Profiler$TimeProfile;
    sget-object v6, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object v6, v4, Lcom/layar/data/category/CategoriesResponse;->categories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 146
    invoke-static {v3, v2}, Lcom/layar/provider/ResolverHelper;->stopTransaction(Landroid/content/ContentResolver;Lcom/layar/util/Profiler$TimeProfile;)V

    .line 148
    invoke-direct {p0}, Lcom/layar/data/category/CategoryManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "prefs.last.categories.text.update"

    .line 150
    iget-wide v7, v4, Lcom/layar/data/category/CategoriesResponse;->modifiedAt:J

    .line 149
    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v6, "prefs.last.categories.full.update"

    .line 153
    iget-wide v7, v4, Lcom/layar/data/category/CategoriesResponse;->modifiedAt:J

    .line 152
    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #profile:Lcom/layar/util/Profiler$TimeProfile;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return-object v4

    .line 142
    .restart local v2       #profile:Lcom/layar/util/Profiler$TimeProfile;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/category/Category;

    .line 143
    .local v0, category:Lcom/layar/data/category/Category;
    invoke-static {v0}, Lcom/layar/provider/CategoriesAlias;->generateValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v5

    .line 144
    .local v5, values:Landroid/content/ContentValues;
    sget-object v7, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public downloadCategories(Z)Lcom/layar/data/category/CategoriesResponse;
    .locals 15
    .parameter "ignoreCounts"

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v11

    if-nez v11, :cond_0

    .line 175
    new-instance v11, Lcom/layar/data/category/CategoriesResponse;

    const/16 v12, -0xa

    invoke-direct {v11, v12}, Lcom/layar/data/category/CategoriesResponse;-><init>(I)V

    .line 218
    :goto_0
    return-object v11

    .line 176
    :cond_0
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v10

    .line 177
    .local v10, uriHelper:Lcom/layar/util/UriHelper;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v11, "/category/api/all/<lang>/"

    invoke-virtual {v10, v11}, Lcom/layar/util/UriHelper;->fixLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    const-string v11, "ignore_count"

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    invoke-direct {p0}, Lcom/layar/data/category/CategoryManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 182
    if-eqz p1, :cond_1

    const-string v12, "prefs.last.categories.text.update"

    .line 183
    :goto_1
    const-wide/16 v13, 0x0

    .line 181
    invoke-interface {v11, v12, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 185
    .local v5, lastUpdate:J
    const-string v11, "modified_at"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    invoke-virtual {v10, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 188
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, requestString:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v11, Lorg/apache/http/HttpHost;

    .line 193
    const-string v12, "dev.layar.com"

    .line 192
    invoke-direct {v11, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v2}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 194
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 195
    .local v3, httpStatus:I
    const/16 v11, 0xc8

    if-ne v3, v11, :cond_2

    .line 196
    invoke-static {v7, v8}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, responseString:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/layar/data/category/CategoriesResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v11

    goto :goto_0

    .line 183
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpStatus:I
    .end local v4           #jsonResponse:Lorg/json/JSONObject;
    .end local v5           #lastUpdate:J
    .end local v7           #requestString:Ljava/lang/String;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #responseString:Ljava/lang/String;
    :cond_1
    const-string v12, "prefs.last.categories.full.update"

    goto :goto_1

    .line 207
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpStatus:I
    .restart local v5       #lastUpdate:J
    .restart local v7       #requestString:Ljava/lang/String;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    new-instance v11, Lcom/layar/data/category/CategoriesResponse;

    const/4 v12, -0x1

    invoke-direct {v11, v12}, Lcom/layar/data/category/CategoriesResponse;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 210
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpStatus:I
    .end local v5           #lastUpdate:J
    .end local v7           #requestString:Ljava/lang/String;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #uriHelper:Lcom/layar/util/UriHelper;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 214
    .local v1, e:Lorg/json/JSONException;
    new-instance v11, Lcom/layar/data/category/CategoriesResponse;

    const/4 v12, -0x3

    invoke-direct {v11, v12}, Lcom/layar/data/category/CategoriesResponse;-><init>(I)V

    goto :goto_0

    .line 215
    .end local v1           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 216
    .local v1, e:Ljava/io/IOException;
    sget-object v11, Lcom/layar/data/category/CategoryManager;->TAG:Ljava/lang/String;

    .line 217
    const-string v12, "Error in communication with server when getting Spotlight POIs"

    .line 216
    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    new-instance v11, Lcom/layar/data/category/CategoriesResponse;

    const/4 v12, -0x2

    invoke-direct {v11, v12}, Lcom/layar/data/category/CategoriesResponse;-><init>(I)V

    goto/16 :goto_0
.end method

.method public getCategoryBaseURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/layar/data/category/CategoryManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "categories.base.url"

    .line 63
    const-string v2, "http://dev.layar.com/static/category_icons/"

    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryName(I)Ljava/lang/String;
    .locals 8
    .parameter "categoryId"

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    .line 94
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    invoke-virtual {v5}, Lcom/layar/provider/CategoriesAlias;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/layar/provider/CategoriesAlias;->ID:Lcom/layar/provider/CategoriesAlias;

    iget-object v5, v5, Lcom/layar/provider/CategoriesAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " == "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 97
    .local v7, result:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v1, v1, Lcom/layar/provider/CategoriesAlias;->column:Ljava/lang/String;

    .line 98
    invoke-static {v6, v1}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    return-object v7
.end method

.method public iconURLFor(II)Ljava/lang/String;
    .locals 2
    .parameter "categoryId"
    .parameter "size"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layar/data/category/CategoryManager;->getCategoryBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needUpdate()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 224
    iget-object v5, p0, Lcom/layar/data/category/CategoryManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 226
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "prefs.last.categories.text.update"

    const-wide/16 v6, 0x0

    .line 225
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 227
    .local v1, lastUpdate:J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 228
    .local v3, lastUpdateDate:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 229
    .local v0, currentDate:Ljava/util/Date;
    invoke-virtual {v0, v8}, Ljava/util/Date;->setHours(I)V

    .line 230
    invoke-virtual {v0, v8}, Ljava/util/Date;->setMinutes(I)V

    .line 231
    invoke-virtual {v0, v8}, Ljava/util/Date;->setSeconds(I)V

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    return v5
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/layar/data/category/CategoryManager;->refreshLastUpdatePreference()V

    .line 237
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTaskSync:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTask:Lcom/layar/data/category/CategoryManager$RefreshTask;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTask:Lcom/layar/data/category/CategoryManager$RefreshTask;

    invoke-virtual {v1}, Lcom/layar/data/category/CategoryManager$RefreshTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_1

    .line 240
    :cond_0
    new-instance v1, Lcom/layar/data/category/CategoryManager$RefreshTask;

    invoke-direct {v1, p0}, Lcom/layar/data/category/CategoryManager$RefreshTask;-><init>(Lcom/layar/data/category/CategoryManager;)V

    iput-object v1, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTask:Lcom/layar/data/category/CategoryManager$RefreshTask;

    .line 241
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager;->mRefreshTask:Lcom/layar/data/category/CategoryManager$RefreshTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/data/category/CategoryManager$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    :cond_1
    monitor-exit v0

    .line 244
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refreshLastUpdatePreference()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 160
    invoke-direct {p0}, Lcom/layar/data/category/CategoryManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs.last.categories.text.update"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v1, "prefs.last.categories.full.update"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method

.method public setCategoryBaseURL(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/layar/data/category/CategoryManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    const-string v1, "categories.base.url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method
