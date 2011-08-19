.class public Lcom/layar/data/user/PaymentProvider;
.super Ljava/lang/Object;
.source "PaymentProvider.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "base_url"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ICON_URL:Ljava/lang/String; = "icon_url"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public baseURL:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public icon:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public iconURL:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/layar/core/ModelProvider;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/user/PaymentProvider;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPaymentIconFilename(I)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "payment_button_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/PaymentProvider;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/layar/data/user/PaymentProvider;

    invoke-direct {v0}, Lcom/layar/data/user/PaymentProvider;-><init>()V

    .line 37
    .local v0, provider:Lcom/layar/data/user/PaymentProvider;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    .line 38
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/PaymentProvider;->name:Ljava/lang/String;

    .line 39
    const-string v1, "icon_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/PaymentProvider;->iconURL:Ljava/lang/String;

    .line 40
    const-string v1, "base_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/PaymentProvider;->baseURL:Ljava/lang/String;

    .line 41
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/user/PaymentProvider;->description:Ljava/lang/String;

    .line 44
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "name"

    iget-object v2, p0, Lcom/layar/data/user/PaymentProvider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "icon_url"

    iget-object v2, p0, Lcom/layar/data/user/PaymentProvider;->iconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "base_url"

    iget-object v2, p0, Lcom/layar/data/user/PaymentProvider;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lcom/layar/data/user/PaymentProvider;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "description"

    iget-object v2, p0, Lcom/layar/data/user/PaymentProvider;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method
