.class public Lcom/layar/data/category/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field public count:I

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "count"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/layar/data/category/Category;->id:I

    .line 25
    iput-object p2, p0, Lcom/layar/data/category/Category;->name:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/layar/data/category/Category;->count:I

    .line 27
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/category/Category;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/layar/data/category/Category;

    invoke-direct {v0}, Lcom/layar/data/category/Category;-><init>()V

    .line 14
    .local v0, category:Lcom/layar/data/category/Category;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/layar/data/category/Category;->id:I

    .line 15
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/category/Category;->name:Ljava/lang/String;

    .line 16
    const-string v1, "count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/layar/data/category/Category;->count:I

    .line 18
    return-object v0
.end method
