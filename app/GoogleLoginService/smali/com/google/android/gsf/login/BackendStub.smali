.class public Lcom/google/android/gsf/login/BackendStub;
.super Ljava/lang/Object;
.source "BackendStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BackendStub$7;,
        Lcom/google/android/gsf/login/BackendStub$Detail;,
        Lcom/google/android/gsf/login/BackendStub$Status;,
        Lcom/google/android/gsf/login/BackendStub$Key;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGls:Lcom/google/android/gsf/IGoogleLoginService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/google/android/gsf/login/BackendStub;->mContext:Landroid/content/Context;

    .line 266
    return-void
.end method

.method private addCountryInfo(Landroid/content/Context;Lorg/json/JSONStringer;)V
    .locals 3
    .parameter "context"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 381
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 384
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->OPERATOR_COUNTRY:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->SIM_COUNTRY:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 388
    return-void
.end method

.method private static copyCaptchaData(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    .locals 7
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 835
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gsf/login/BackendStub$Key;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_DATA:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_MIME_TYPE:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v5, v3, v4

    invoke-static {p0, p1, v3}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 839
    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_DATA:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 842
    .local v0, base64EncodedCaptchaData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 844
    const-string v3, "GoogleLoginService"

    const-string v4, "**** NO CAPTCHA DATA ***"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 851
    .local v2, captchaData:[B
    array-length v3, v2

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 853
    .local v1, captchaBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    const-string v3, "GoogleLoginService"

    const-string v4, "Failed to read bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_1
    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_BITMAP:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    .locals 9
    .parameter
    .parameter "json"
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONStringer;",
            "[",
            "Lcom/google/android/gsf/login/BackendStub$Key;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 870
    .local p0, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->VERSION:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "3"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 873
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .line 874
    .local v4, key:Lcom/google/android/gsf/login/BackendStub$Key;
    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, k:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 876
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    .end local v0           #arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/String;
    .end local v4           #key:Lcom/google/android/gsf/login/BackendStub$Key;
    .end local v5           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 879
    .local v1, e:Lorg/json/JSONException;
    throw v1

    .line 881
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    :cond_1
    return-void
.end method

.method private static copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    .locals 7
    .parameter "from"
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/google/android/gsf/login/BackendStub$Key;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 895
    .local p1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 896
    .local v2, key:Lcom/google/android/gsf/login/BackendStub$Key;
    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, keyOnWire:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 898
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 899
    .local v5, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 900
    invoke-virtual {p1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v2           #key:Lcom/google/android/gsf/login/BackendStub$Key;
    .end local v3           #keyOnWire:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static usernameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 279
    if-eqz p0, :cond_1

    .line 281
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 282
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 284
    .end local v0           #pos:I
    :goto_0
    return-object v1

    .restart local v0       #pos:I
    :cond_0
    move-object v1, p0

    .line 282
    goto :goto_0

    .end local v0           #pos:I
    :cond_1
    move-object v1, p0

    .line 284
    goto :goto_0
.end method


# virtual methods
.method public checkLoginName(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/CancelableCallbackThread;"
        }
    .end annotation

    .prologue
    .line 815
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gsf/login/BackendStub$4;-><init>(Lcom/google/android/gsf/login/BackendStub;Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)V

    invoke-static {v0, p3}, Lcom/google/android/gsf/login/CancelableCallbackThread;->startThread(Ljava/lang/Runnable;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v0

    return-object v0
.end method

.method public checkLoginNameSync(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/BackendStub$Status;
    .locals 18
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/BackendStub$Status;"
        }
    .end annotation

    .prologue
    .line 749
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/login/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v5

    .line 750
    .local v5, httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    new-instance v13, Lorg/json/JSONStringer;

    invoke-direct {v13}, Lorg/json/JSONStringer;-><init>()V

    .line 751
    .local v13, stringer:Lorg/json/JSONStringer;
    invoke-virtual {v13}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v13

    .line 752
    invoke-virtual {v5}, Lcom/google/android/gsf/login/HttpHelper;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    .line 753
    .local v10, msisdn:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 754
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->MSISDN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 756
    :cond_0
    const/4 v15, 0x5

    new-array v15, v15, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/16 v16, 0x0

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v17, v15, v16

    const/16 v16, 0x4

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v17, v15, v16

    move-object/from16 v0, p2

    move-object v1, v13

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub;->copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 758
    invoke-virtual {v13}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 760
    const-string v15, "https://android.clients.google.com/setup/checkavail"

    invoke-virtual {v5, v15, v13}, Lcom/google/android/gsf/login/HttpHelper;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;)Ljava/lang/String;

    move-result-object v7

    .line 762
    .local v7, json:Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 765
    .local v11, resultJson:Lorg/json/JSONObject;
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 766
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 767
    .local v8, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 768
    .local v9, len:I
    new-array v14, v9, [Ljava/lang/String;

    .line 769
    .local v14, suggestionsArray:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 770
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    .line 769
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 773
    :cond_1
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v6           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #len:I
    .end local v14           #suggestionsArray:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 779
    .local v3, detail:Ljava/lang/String;
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/login/BackendStub$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v12

    .line 780
    .local v12, status:Lcom/google/android/gsf/login/BackendStub$Status;
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/login/BackendStub$Status;

    if-ne v12, v15, :cond_3

    .line 781
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 782
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #detail:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 784
    .restart local v3       #detail:Ljava/lang/String;
    :cond_3
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    move-object v0, v11

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BackendStub;->copyCaptchaData(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    .line 789
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v15}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/login/BackendStub$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v15

    .line 802
    .end local v3           #detail:Ljava/lang/String;
    .end local v5           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v7           #json:Ljava/lang/String;
    .end local v10           #msisdn:Ljava/lang/String;
    .end local v11           #resultJson:Lorg/json/JSONObject;
    .end local v12           #status:Lcom/google/android/gsf/login/BackendStub$Status;
    .end local v13           #stringer:Lorg/json/JSONStringer;
    :goto_1
    return-object v15

    .line 790
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 791
    .local v4, e:Lorg/json/JSONException;
    const-string v15, "GoogleLoginService"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_1

    .line 793
    .end local v4           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v15

    move-object v4, v15

    .line 794
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v15, "GoogleLoginService"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_1

    .line 796
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v15

    move-object v4, v15

    .line 797
    .local v4, e:Lcom/google/android/gsf/login/HttpHelperException;
    const-string v15, "GoogleLoginService"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_1

    .line 799
    .end local v4           #e:Lcom/google/android/gsf/login/HttpHelperException;
    :catch_3
    move-exception v15

    move-object v4, v15

    .line 800
    .local v4, e:Ljava/net/SocketTimeoutException;
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_1

    .line 801
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v15

    move-object v4, v15

    .line 802
    .local v4, e:Ljava/io/IOException;
    sget-object v15, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_1
.end method

.method public createAccount(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/CancelableCallbackThread;"
        }
    .end annotation

    .prologue
    .line 715
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gsf/login/BackendStub$3;-><init>(Lcom/google/android/gsf/login/BackendStub;Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)V

    invoke-static {v0, p3}, Lcom/google/android/gsf/login/CancelableCallbackThread;->startThread(Ljava/lang/Runnable;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v0

    return-object v0
.end method

.method public createAccountSync(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/BackendStub$Status;
    .locals 13
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/BackendStub$Status;"
        }
    .end annotation

    .prologue
    .line 627
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/login/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v2

    .line 628
    .local v2, httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    new-instance v9, Lorg/json/JSONStringer;

    invoke-direct {v9}, Lorg/json/JSONStringer;-><init>()V

    .line 629
    .local v9, stringer:Lorg/json/JSONStringer;
    invoke-virtual {v9}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v9

    .line 630
    invoke-virtual {v2}, Lcom/google/android/gsf/login/HttpHelper;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    .line 631
    .local v6, msisdn:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 632
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->MSISDN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 634
    :cond_0
    const/16 v10, 0xa

    new-array v10, v10, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_QUESTION:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SECONDARY_EMAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SID:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x7

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/16 v11, 0x8

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/16 v11, 0x9

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    invoke-static {p2, v9, v10}, Lcom/google/android/gsf/login/BackendStub;->copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 641
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, locale:Ljava/lang/String;
    const-string v10, "GoogleLoginService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Creating account with locale \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->LOCALE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 644
    invoke-direct {p0, p1, v9}, Lcom/google/android/gsf/login/BackendStub;->addCountryInfo(Landroid/content/Context;Lorg/json/JSONStringer;)V

    .line 646
    invoke-virtual {v9}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 648
    new-instance v8, Lorg/json/JSONObject;

    const-string v10, "https://android.clients.google.com/setup/create"

    invoke-virtual {v2, v10, v9}, Lcom/google/android/gsf/login/HttpHelper;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    .local v8, resultJson:Lorg/json/JSONObject;
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v7

    .line 660
    .local v7, result:Lcom/google/android/gsf/login/BackendStub$Status;
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    if-eq v10, v7, :cond_1

    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    if-ne v10, v7, :cond_5

    .line 662
    :cond_1
    new-instance v4, Lcom/google/android/gsf/LoginData;

    invoke-direct {v4}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 663
    .local v4, loginData:Lcom/google/android/gsf/LoginData;
    invoke-virtual {p0, p2, v4}, Lcom/google/android/gsf/login/BackendStub;->loginSync(Ljava/util/HashMap;Lcom/google/android/gsf/LoginData;)Lcom/google/android/gsf/LoginData$Status;

    move-result-object v5

    .line 664
    .local v5, loginStatus:Lcom/google/android/gsf/LoginData$Status;
    sget-object v10, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    iget-object v11, v4, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-ne v10, v11, :cond_2

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "loginData"

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 666
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 704
    .end local v2           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #loginData:Lcom/google/android/gsf/LoginData;
    .end local v5           #loginStatus:Lcom/google/android/gsf/LoginData$Status;
    .end local v6           #msisdn:Ljava/lang/String;
    .end local v7           #result:Lcom/google/android/gsf/login/BackendStub$Status;
    .end local v8           #resultJson:Lorg/json/JSONObject;
    .end local v9           #stringer:Lorg/json/JSONStringer;
    :goto_0
    return-object v10

    .line 668
    .restart local v2       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v3       #locale:Ljava/lang/String;
    .restart local v4       #loginData:Lcom/google/android/gsf/LoginData;
    .restart local v5       #loginStatus:Lcom/google/android/gsf/LoginData$Status;
    .restart local v6       #msisdn:Ljava/lang/String;
    .restart local v7       #result:Lcom/google/android/gsf/login/BackendStub$Status;
    .restart local v8       #resultJson:Lorg/json/JSONObject;
    .restart local v9       #stringer:Lorg/json/JSONStringer;
    :cond_2
    const-string v10, "GoogleLoginService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "login failed after creating account, status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v10, v4, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-eqz v10, :cond_3

    iget-object v10, v4, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v11, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    if-ne v10, v11, :cond_3

    .line 671
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 674
    :cond_3
    const-string v10, "GoogleLoginService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected status in createAccountSync: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, v4, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v11}, Lcom/google/android/gsf/LoginData$Status;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->SERVER_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 674
    :cond_4
    const-string v11, "null"

    goto :goto_1

    .line 679
    .end local v4           #loginData:Lcom/google/android/gsf/LoginData;
    .end local v5           #loginStatus:Lcom/google/android/gsf/LoginData$Status;
    :cond_5
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->CAPTCHA:Lcom/google/android/gsf/login/BackendStub$Status;

    if-ne v10, v7, :cond_7

    .line 680
    invoke-static {v8, p2}, Lcom/google/android/gsf/login/BackendStub;->copyCaptchaData(Lorg/json/JSONObject;Ljava/util/HashMap;)V

    :cond_6
    :goto_2
    move-object v10, v7

    .line 691
    goto :goto_0

    .line 681
    :cond_7
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-ne v10, v7, :cond_6

    .line 683
    :try_start_1
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, detail:Ljava/lang/String;
    const-string v10, "GoogleLoginService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BAD_REQUEST detail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_2

    .line 686
    .end local v0           #detail:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2

    .line 692
    .end local v2           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v3           #locale:Ljava/lang/String;
    .end local v6           #msisdn:Ljava/lang/String;
    .end local v7           #result:Lcom/google/android/gsf/login/BackendStub$Status;
    .end local v8           #resultJson:Lorg/json/JSONObject;
    .end local v9           #stringer:Lorg/json/JSONStringer;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 693
    .local v1, e:Lorg/json/JSONException;
    const-string v10, "GoogleLoginService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v1           #e:Lorg/json/JSONException;
    :goto_3
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0

    .line 694
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 695
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v10, "GoogleLoginService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 696
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v10

    move-object v1, v10

    .line 697
    .local v1, e:Lcom/google/android/gsf/login/HttpHelperException;
    const-string v10, "GoogleLoginService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 698
    .end local v1           #e:Lcom/google/android/gsf/login/HttpHelperException;
    :catch_4
    move-exception v10

    move-object v1, v10

    .line 699
    .local v1, e:Ljava/net/SocketTimeoutException;
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0

    .line 700
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_5
    move-exception v10

    move-object v1, v10

    .line 701
    .local v1, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0
.end method

.method public getOAuthRequestToken(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/CancelableCallbackThread;"
        }
    .end annotation

    .prologue
    .line 913
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gsf/login/BackendStub$5;-><init>(Lcom/google/android/gsf/login/BackendStub;Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)V

    invoke-static {v0, p3}, Lcom/google/android/gsf/login/CancelableCallbackThread;->startThread(Ljava/lang/Runnable;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestTokenSync(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/BackendStub$Status;
    .locals 24
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/BackendStub$Status;"
        }
    .end annotation

    .prologue
    .line 959
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v17, "GoogleLoginService"

    const-string v18, "oauthGetRequestTokenSync "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 962
    .local v13, oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "oauth_callback"

    const-string v18, "oauth://gls/callback"

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v17, "scope"

    const-string v18, "https://www.google.com/accounts/OAuthLogin"

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v17, "xoauth_displayname"

    const-string v18, "Android Login Service"

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    new-instance v12, Lnet/oauth/OAuthConsumer;

    const-string v17, "*not-used*"

    const-string v18, "anonymous"

    const-string v19, "anonymous"

    new-instance v20, Lnet/oauth/OAuthServiceProvider;

    const-string v21, "*not-used*"

    const-string v22, "*not-used*"

    const-string v23, "*not-used*"

    invoke-direct/range {v20 .. v23}, Lnet/oauth/OAuthServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/oauth/OAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V

    .line 969
    .local v12, oauthConsumer:Lnet/oauth/OAuthConsumer;
    new-instance v5, Lnet/oauth/OAuthAccessor;

    invoke-direct {v5, v12}, Lnet/oauth/OAuthAccessor;-><init>(Lnet/oauth/OAuthConsumer;)V

    .line 970
    .local v5, accessor:Lnet/oauth/OAuthAccessor;
    const-string v17, "GET"

    const-string v18, "https://www.google.com/accounts/OAuthGetRequestToken"

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lnet/oauth/OAuthAccessor;->newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    move-result-object v11

    .line 972
    .local v11, message:Lnet/oauth/OAuthMessage;
    const-string v17, "https://www.google.com/accounts/OAuthGetRequestToken"

    invoke-virtual {v11}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/oauth/OAuth;->addParameters(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v16

    .line 973
    .local v16, url:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/login/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v8

    .line 974
    .local v8, httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    const-string v17, "GoogleLoginService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Requesting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/HttpHelper;->requestUrl(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 976
    .local v15, response:Lorg/apache/http/HttpResponse;
    const-string v6, ""

    .line 977
    .local v6, body:Ljava/lang/String;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 978
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 981
    :cond_0
    const-string v17, "GoogleLoginService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 983
    const-string v17, "GoogleLoginService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Response content "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_1
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_REQUEST_TOKEN_SECRET:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 1008
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    .line 1023
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :goto_0
    return-object v17

    .line 992
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v11       #message:Lnet/oauth/OAuthMessage;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/lang/String;
    :sswitch_0
    invoke-static {v6}, Lnet/oauth/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 993
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 994
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 995
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/oauth/OAuth$Parameter;

    .line 996
    .local v14, p:Lnet/oauth/OAuth$Parameter;
    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_TOKEN_URL_PARAM:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 997
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/oauth/OAuthException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    .line 1010
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #p:Lnet/oauth/OAuth$Parameter;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 1011
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "GoogleLoginService"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 998
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v11       #message:Lnet/oauth/OAuthMessage;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #p:Lnet/oauth/OAuth$Parameter;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_TOKEN_SECRET_URL_PARAM:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 999
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_REQUEST_TOKEN_SECRET:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Lnet/oauth/OAuth$Parameter;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lnet/oauth/OAuthException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 1013
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #p:Lnet/oauth/OAuth$Parameter;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 1014
    .local v7, e:Lcom/google/android/gsf/login/HttpHelperException;
    const-string v17, "GoogleLoginService"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 1002
    .end local v7           #e:Lcom/google/android/gsf/login/HttpHelperException;
    .restart local v5       #accessor:Lnet/oauth/OAuthAccessor;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    .restart local v11       #message:Lnet/oauth/OAuthMessage;
    .restart local v12       #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .restart local v13       #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #url:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 1004
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/oauth/OAuth$Parameter;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lnet/oauth/OAuth$Parameter;>;"
    :sswitch_1
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 1006
    :sswitch_2
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->SERVER_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lnet/oauth/OAuthException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 1016
    .end local v5           #accessor:Lnet/oauth/OAuthAccessor;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v11           #message:Lnet/oauth/OAuthMessage;
    .end local v12           #oauthConsumer:Lnet/oauth/OAuthConsumer;
    .end local v13           #oauthParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #url:Ljava/lang/String;
    :catch_2
    move-exception v17

    move-object/from16 v7, v17

    .line 1017
    .local v7, e:Ljava/net/SocketTimeoutException;
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0

    .line 1018
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v17

    move-object/from16 v7, v17

    .line 1019
    .local v7, e:Ljava/io/IOException;
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0

    .line 1020
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v17

    move-object/from16 v7, v17

    .line 1021
    .local v7, e:Ljava/net/URISyntaxException;
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0

    .line 1022
    .end local v7           #e:Ljava/net/URISyntaxException;
    :catch_5
    move-exception v17

    move-object/from16 v7, v17

    .line 1023
    .local v7, e:Lnet/oauth/OAuthException;
    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto/16 :goto_0

    .line 990
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public login(Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 1
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/CancelableCallbackThread;"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gsf/login/BackendStub$2;-><init>(Lcom/google/android/gsf/login/BackendStub;Ljava/util/HashMap;Landroid/os/Message;)V

    invoke-static {v0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;->startThread(Ljava/lang/Runnable;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v0

    return-object v0
.end method

.method public loginSync(Ljava/util/HashMap;Lcom/google/android/gsf/LoginData;)Lcom/google/android/gsf/LoginData$Status;
    .locals 19
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gsf/LoginData;",
            ")",
            "Lcom/google/android/gsf/LoginData$Status;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 416
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->ACCOUNT_TYPE_ENTERPRISE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    move/from16 v11, v16

    .line 419
    .local v11, isEnterpriseAccount:Z
    :goto_0
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_ACCESS_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 421
    const/4 v11, 0x0

    .line 422
    const-string v16, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 423
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_ACCESS_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_ACCESS_TOKEN_SECRET:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 429
    :goto_1
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 430
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BackendStub;->mGls:Lcom/google/android/gsf/IGoogleLoginService;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 441
    const-string v16, "GoogleLoginService"

    const-string v17, "GoogleLoginService not available"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v16, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 443
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    move-object/from16 v16, v0

    .line 570
    .end local v11           #isEnterpriseAccount:Z
    :goto_2
    return-object v16

    .line 416
    :cond_0
    const/16 v16, 0x0

    move/from16 v11, v16

    goto/16 :goto_0

    .line 426
    .restart local v11       #isEnterpriseAccount:Z
    :cond_1
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 561
    .end local v11           #isEnterpriseAccount:Z
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 562
    .local v7, e:Landroid/os/RemoteException;
    const-string v16, "GoogleLoginService"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v16, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_2

    .line 447
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v11       #isEnterpriseAccount:Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BackendStub;->mGls:Lcom/google/android/gsf/IGoogleLoginService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/gsf/IGoogleLoginService;->tryNewAccount(Lcom/google/android/gsf/LoginData;)V

    .line 449
    const/4 v14, 0x0

    .line 450
    .local v14, resultJson:Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 451
    .local v10, incoming_username:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 452
    new-instance v14, Lorg/json/JSONObject;

    .end local v14           #resultJson:Lorg/json/JSONObject;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v14       #resultJson:Lorg/json/JSONObject;
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 454
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 459
    :cond_3
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$7;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 556
    :cond_4
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    if-eqz v10, :cond_5

    .line 557
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    move-object/from16 v16, v0

    goto/16 :goto_2

    .line 463
    :pswitch_0
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/android/gsf/login/BackendStub$Key;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->SID:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->NICKNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->TIME_ZONE:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->FLAGS:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 469
    const-string v16, "firstRun"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/BackendStub;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->SHARED_PREFS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 472
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_6

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 475
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->ACCOUNT_TYPE_ENTERPRISE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->ACCOUNT_TYPE_ENTERPRISE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_7

    sget-object v17, Lcom/google/android/gsf/login/BackendStub$Key;->ACCOUNT_TYPE_ENTERPRISE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_5
    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-static {v8}, Lcom/google/android/gsf/login/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 564
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #incoming_username:Ljava/lang/String;
    .end local v11           #isEnterpriseAccount:Z
    .end local v14           #resultJson:Lorg/json/JSONObject;
    :catch_1
    move-exception v16

    move-object/from16 v7, v16

    .line 565
    .local v7, e:Lorg/json/JSONException;
    const-string v16, "GoogleLoginService"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v7           #e:Lorg/json/JSONException;
    :goto_6
    sget-object v16, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    goto/16 :goto_2

    .line 472
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v10       #incoming_username:Ljava/lang/String;
    .restart local v11       #isEnterpriseAccount:Z
    .restart local v14       #resultJson:Lorg/json/JSONObject;
    :cond_6
    :try_start_2
    const-string v17, ""

    goto :goto_4

    .line 475
    :cond_7
    const-string v17, ""

    goto :goto_5

    .line 492
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_1
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->APPS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 493
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->APPS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 494
    .local v12, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 495
    .local v13, len:I
    new-array v3, v13, [Ljava/lang/String;

    .line 496
    .local v3, appsArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    if-ge v9, v13, :cond_8

    .line 497
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v9

    .line 496
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 499
    :cond_8
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->APPS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v3           #appsArray:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #len:I
    :cond_9
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/android/gsf/login/BackendStub$Key;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->NICKNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 566
    .end local v10           #incoming_username:Ljava/lang/String;
    .end local v11           #isEnterpriseAccount:Z
    .end local v14           #resultJson:Lorg/json/JSONObject;
    :catch_2
    move-exception v16

    move-object/from16 v7, v16

    .line 567
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v16, "GoogleLoginService"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 508
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #incoming_username:Ljava/lang/String;
    .restart local v11       #isEnterpriseAccount:Z
    .restart local v14       #resultJson:Lorg/json/JSONObject;
    :pswitch_2
    const/16 v16, 0x5

    :try_start_3
    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/android/gsf/login/BackendStub$Key;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->SID:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->NICKNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->TIME_ZONE:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 512
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 513
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 515
    .restart local v12       #jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 516
    .restart local v13       #len:I
    new-array v15, v13, [Ljava/lang/String;

    .line 517
    .local v15, suggestionsArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_8
    if-ge v9, v13, :cond_a

    .line 518
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v9

    .line 517
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 520
    :cond_a
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 526
    .end local v9           #i:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v13           #len:I
    .end local v15           #suggestionsArray:[Ljava/lang/String;
    :pswitch_3
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/android/gsf/login/BackendStub$Key;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/google/android/gsf/login/BackendStub$Key;->SID:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 529
    if-eqz v10, :cond_b

    .line 530
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->OLD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 533
    :cond_b
    const-string v16, "GoogleLoginService"

    const-string v17, "DELETED_GMAIL is missing old username"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v16, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    goto/16 :goto_2

    .line 539
    :pswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    move-object v5, v0

    .line 540
    .local v5, captchaData:[B
    const/16 v16, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 542
    .local v4, captchaBitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_c

    const-string v16, "GoogleLoginService"

    const-string v17, "Failed to read bitmap"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_c
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_BITMAP:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 549
    .end local v4           #captchaBitmap:Landroid/graphics/Bitmap;
    .end local v5           #captchaData:[B
    :pswitch_5
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, detail:Ljava/lang/String;
    const-string v16, "GoogleLoginService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to login because: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v16, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ratePassword(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/CancelableCallbackThread;"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gsf/login/BackendStub$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gsf/login/BackendStub$1;-><init>(Lcom/google/android/gsf/login/BackendStub;Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)V

    invoke-static {v0, p3}, Lcom/google/android/gsf/login/CancelableCallbackThread;->startThread(Ljava/lang/Runnable;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v0

    return-object v0
.end method

.method public ratePasswordSync(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/BackendStub$Status;
    .locals 10
    .parameter "context"
    .parameter
    .parameter "resultMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/google/android/gsf/login/BackendStub$Status;"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/login/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v1

    .line 316
    .local v1, httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    new-instance v6, Lorg/json/JSONStringer;

    invoke-direct {v6}, Lorg/json/JSONStringer;-><init>()V

    .line 317
    .local v6, stringer:Lorg/json/JSONStringer;
    invoke-virtual {v6}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v6

    .line 318
    invoke-virtual {v1}, Lcom/google/android/gsf/login/HttpHelper;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, msisdn:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 320
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->MSISDN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 322
    :cond_0
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v9, v7, v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gsf/login/BackendStub;->copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 324
    invoke-virtual {v6}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 326
    const-string v7, "https://android.clients.google.com/setup/ratepw"

    invoke-virtual {v1, v7, v6}, Lcom/google/android/gsf/login/HttpHelper;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, json:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .local v4, resultJson:Lorg/json/JSONObject;
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gsf/login/BackendStub$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v5

    .line 332
    .local v5, status:Lcom/google/android/gsf/login/BackendStub$Status;
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    if-ne v7, v5, :cond_1

    .line 333
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gsf/login/BackendStub$Key;->STRENGTH:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v9, v7, v8

    invoke-static {v4, p2, v7}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    move-object v7, v5

    .line 347
    .end local v1           #httpHelper:Lcom/google/android/gsf/login/HttpHelper;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #msisdn:Ljava/lang/String;
    .end local v4           #resultJson:Lorg/json/JSONObject;
    .end local v5           #status:Lcom/google/android/gsf/login/BackendStub$Status;
    .end local v6           #stringer:Lorg/json/JSONStringer;
    :goto_0
    return-object v7

    .line 336
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 337
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "GoogleLoginService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 338
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 339
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "GoogleLoginService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 341
    .local v0, e:Lcom/google/android/gsf/login/HttpHelperException;
    const-string v7, "GoogleLoginService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v0           #e:Lcom/google/android/gsf/login/HttpHelperException;
    :catch_3
    move-exception v7

    move-object v0, v7

    .line 343
    .local v0, e:Ljava/net/SocketTimeoutException;
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0

    .line 344
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v7

    move-object v0, v7

    .line 345
    .local v0, e:Ljava/io/IOException;
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    goto :goto_0
.end method

.method public setGls(Lcom/google/android/gsf/IGoogleLoginService;)V
    .locals 0
    .parameter "gls"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/gsf/login/BackendStub;->mGls:Lcom/google/android/gsf/IGoogleLoginService;

    .line 270
    return-void
.end method
