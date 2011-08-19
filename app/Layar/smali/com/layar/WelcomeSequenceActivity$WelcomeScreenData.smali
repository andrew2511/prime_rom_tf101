.class Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
.super Ljava/lang/Object;
.source "WelcomeSequenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/WelcomeSequenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WelcomeScreenData"
.end annotation


# instance fields
.field public id:I

.field public imageId:Ljava/lang/String;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    .locals 6
    .parameter "json"

    .prologue
    .line 209
    :try_start_0
    new-instance v4, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;

    invoke-direct {v4}, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;-><init>()V

    .line 210
    .local v4, result:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->id:I

    .line 211
    const-string v5, "imageId"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->imageId:Ljava/lang/String;

    .line 212
    const-string v5, "texts"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 213
    .local v2, jsonMessages:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 215
    .local v0, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->messages:Ljava/util/ArrayList;

    .line 216
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    move-object v5, v4

    .line 227
    .end local v2           #jsonMessages:Lorg/json/JSONArray;
    .end local v4           #result:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    :goto_1
    return-object v5

    .line 218
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #jsonMessages:Lorg/json/JSONArray;
    .restart local v4       #result:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 217
    invoke-static {v5}, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;->parse(Lorg/json/JSONObject;)Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;

    move-result-object v3

    .line 219
    .local v3, message:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    iget-object v5, v4, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #jsonMessages:Lorg/json/JSONArray;
    .end local v3           #message:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenMessage;
    .end local v4           #result:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    :catch_0
    move-exception v5

    .line 227
    const/4 v5, 0x0

    goto :goto_1
.end method
