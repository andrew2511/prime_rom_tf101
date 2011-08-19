.class final Lcom/google/ads/AdUtil;
.super Ljava/lang/Object;
.source "AdUtil.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Google.AdUtil"

.field private static density:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/high16 v0, -0x4080

    sput v0, Lcom/google/ads/AdUtil;->density:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static generateJSONParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, parameters:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v2, jsonParams:Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/AdSpec$Parameter;

    .line 69
    .local v4, param:Lcom/google/ads/AdSpec$Parameter;
    invoke-virtual {v4}, Lcom/google/ads/AdSpec$Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/ads/AdSpec$Parameter;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "Google.AdUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error encoding JSON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #param:Lcom/google/ads/AdSpec$Parameter;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static scaleDipsToPixels(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "size"

    .prologue
    .line 57
    sget v0, Lcom/google/ads/AdUtil;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/google/ads/AdUtil;->density:F

    .line 60
    :cond_0
    int-to-float v0, p1

    sget v1, Lcom/google/ads/AdUtil;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static scalePixelsToDips(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "size"

    .prologue
    .line 47
    sget v0, Lcom/google/ads/AdUtil;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/google/ads/AdUtil;->density:F

    .line 50
    :cond_0
    int-to-float v0, p1

    sget v1, Lcom/google/ads/AdUtil;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
