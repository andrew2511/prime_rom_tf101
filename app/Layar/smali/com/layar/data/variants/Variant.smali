.class public Lcom/layar/data/variants/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public heading:Ljava/lang/String;

.field public image:Landroid/graphics/Bitmap;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/layar/data/variants/Variant;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/variants/Variant;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/Variant;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Lcom/layar/data/variants/Variant;

    invoke-direct {v2}, Lcom/layar/data/variants/Variant;-><init>()V

    .line 23
    .local v2, result:Lcom/layar/data/variants/Variant;
    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/variants/Variant;->name:Ljava/lang/String;

    .line 24
    const-string v3, "heading"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/variants/Variant;->heading:Ljava/lang/String;

    .line 25
    const-string v3, "image_urls"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 26
    .local v1, jsonImage:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 28
    sget-boolean v3, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    if-eqz v3, :cond_1

    .line 29
    const-string v3, "96"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, imageUrl:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/layar/data/ImageCache;->getVariantImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/layar/data/variants/Variant;->image:Landroid/graphics/Bitmap;

    .line 35
    .end local v0           #imageUrl:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 31
    :cond_1
    const-string v3, "64"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #imageUrl:Ljava/lang/String;
    goto :goto_0
.end method
