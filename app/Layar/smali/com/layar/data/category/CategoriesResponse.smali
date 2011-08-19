.class public Lcom/layar/data/category/CategoriesResponse;
.super Lcom/layar/data/Response;
.source "CategoriesResponse.java"


# instance fields
.field public baseURL:Ljava/lang/String;

.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;"
        }
    .end annotation
.end field

.field public language:Ljava/lang/String;

.field public modifiedAt:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/layar/data/Response;-><init>(Lcom/layar/data/Response;)V

    .line 43
    return-void
.end method

.method public static bridge synthetic parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/layar/data/category/CategoriesResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/category/CategoriesResponse;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0}, Lcom/layar/data/Response;->parse(Lorg/json/JSONObject;)Lcom/layar/data/Response;

    move-result-object v1

    .line 20
    .local v1, response:Lcom/layar/data/Response;
    new-instance v0, Lcom/layar/data/category/CategoriesResponse;

    invoke-direct {v0, v1}, Lcom/layar/data/category/CategoriesResponse;-><init>(Lcom/layar/data/Response;)V

    .line 22
    .local v0, categoriesResponse:Lcom/layar/data/category/CategoriesResponse;
    invoke-virtual {v0}, Lcom/layar/data/category/CategoriesResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const-string v2, "lang"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/category/CategoriesResponse;->language:Ljava/lang/String;

    .line 25
    const-string v2, "baseUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/category/CategoriesResponse;->baseURL:Ljava/lang/String;

    .line 27
    const-string v2, "categories"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/data/category/CategoriesResponse;->parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/category/CategoriesResponse;->categories:Ljava/util/ArrayList;

    .line 28
    const-string v2, "modified_at"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/layar/data/category/CategoriesResponse;->modifiedAt:J

    .line 30
    :cond_0
    return-object v0
.end method

.method public static parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/category/Category;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 38
    return-object v1

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/layar/data/category/Category;->parse(Lorg/json/JSONObject;)Lcom/layar/data/category/Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
