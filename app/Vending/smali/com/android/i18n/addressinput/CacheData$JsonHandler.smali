.class Lcom/android/i18n/addressinput/CacheData$JsonHandler;
.super Ljava/lang/Object;
.source "CacheData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/CacheData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonHandler"
.end annotation


# instance fields
.field private final mExistingJso:Lorg/json/JSONObject;

.field private final mKey:Ljava/lang/String;

.field private final mListener:Lcom/android/i18n/addressinput/DataLoadListener;

.field final synthetic this$0:Lcom/android/i18n/addressinput/CacheData;


# direct methods
.method private constructor <init>(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "oldJso"
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p2}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 172
    iput-object p2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mExistingJso:Lorg/json/JSONObject;

    .line 174
    iput-object p4, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;Lcom/android/i18n/addressinput/CacheData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/CacheData$JsonHandler;-><init>(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/i18n/addressinput/CacheData$JsonHandler;Lcom/android/i18n/addressinput/JsoMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->handleJson(Lcom/android/i18n/addressinput/JsoMap;)V

    return-void
.end method

.method private handleJson(Lcom/android/i18n/addressinput/JsoMap;)V
    .locals 5
    .parameter "map"

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string v2, "CacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server returns null for key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    invoke-static {v2}, Lcom/android/i18n/addressinput/CacheData;->access$000(Lcom/android/i18n/addressinput/CacheData;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/i18n/addressinput/CacheData;->access$100(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-static {v2, v3}, Lcom/android/i18n/addressinput/CacheData;->access$200(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 213
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v1, p1

    .line 197
    .local v1, json:Lorg/json/JSONObject;
    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->ID:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressDataKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, idKey:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string v2, "CacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid or empty data returned for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    invoke-static {v2}, Lcom/android/i18n/addressinput/CacheData;->access$000(Lcom/android/i18n/addressinput/CacheData;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/i18n/addressinput/CacheData;->access$100(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-static {v2, v3}, Lcom/android/i18n/addressinput/CacheData;->access$200(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mExistingJso:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mExistingJso:Lorg/json/JSONObject;

    check-cast v2, Lcom/android/i18n/addressinput/JsoMap;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/JsoMap;->mergeData(Lcom/android/i18n/addressinput/JsoMap;)V

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    invoke-static {v2}, Lcom/android/i18n/addressinput/CacheData;->access$300(Lcom/android/i18n/addressinput/CacheData;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/android/i18n/addressinput/JsoMap;->putObj(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 211
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/i18n/addressinput/CacheData;->access$100(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->this$0:Lcom/android/i18n/addressinput/CacheData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-static {v2, v3}, Lcom/android/i18n/addressinput/CacheData;->access$200(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0
.end method
