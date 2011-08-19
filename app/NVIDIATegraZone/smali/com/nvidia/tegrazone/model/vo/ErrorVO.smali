.class public Lcom/nvidia/tegrazone/model/vo/ErrorVO;
.super Ljava/lang/Object;
.source "ErrorVO.java"


# static fields
.field public static final BAD_CARRIER:I = 0xca

.field public static final BAD_DEVICE:I = 0xc9

.field public static final BAD_PARAMS:I = 0xcb

.field public static final NO_RESULTS:I = 0xc8

.field public static final NVFB_BAD_PARAMS:I = 0x1fb

.field public static final NVFB_BANNED:I = 0x1f7

.field public static final NVFB_LENGTH_EXCEEDED:I = 0x1f8

.field public static final NVFB_MAX_COMMENTS:I = 0x1f6

.field public static final NVFB_MISSING_RATING:I = 0x1f9

.field public static final NVFB_NO_CONNECTION:I = 0x1f5

.field public static final NVFB_NO_RESULTS:I = 0x1fa

.field public static final NVFB_RATE_LIMITED:I = 0x1fc


# instance fields
.field public code:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeFromCode(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 75
    const-string v0, ""

    .line 77
    .local v0, type:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 116
    :goto_0
    return-object v0

    .line 79
    :sswitch_0
    const-string v0, "No Results"

    .line 80
    goto :goto_0

    .line 82
    :sswitch_1
    const-string v0, "Bad Device"

    .line 83
    goto :goto_0

    .line 85
    :sswitch_2
    const-string v0, "Bad Carrier"

    .line 86
    goto :goto_0

    .line 88
    :sswitch_3
    const-string v0, "Bad Params"

    .line 89
    goto :goto_0

    .line 91
    :sswitch_4
    const-string v0, "No Connection"

    .line 92
    goto :goto_0

    .line 94
    :sswitch_5
    const-string v0, "Max Comments"

    .line 95
    goto :goto_0

    .line 97
    :sswitch_6
    const-string v0, "Banned User"

    .line 98
    goto :goto_0

    .line 100
    :sswitch_7
    const-string v0, "Comment too long"

    .line 101
    goto :goto_0

    .line 103
    :sswitch_8
    const-string v0, "Rating Missing"

    .line 104
    goto :goto_0

    .line 106
    :sswitch_9
    const-string v0, "No Feedback Results"

    .line 107
    goto :goto_0

    .line 109
    :sswitch_a
    const-string v0, "Bad Feedback Params"

    .line 110
    goto :goto_0

    .line 112
    :sswitch_b
    const-string v0, "Feedback Rate Limited"

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0x1f5 -> :sswitch_4
        0x1f6 -> :sswitch_5
        0x1f7 -> :sswitch_6
        0x1f8 -> :sswitch_7
        0x1f9 -> :sswitch_8
        0x1fa -> :sswitch_9
        0x1fb -> :sswitch_a
        0x1fc -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public copyFromArray(Lorg/json/JSONArray;)Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    .locals 3
    .parameter "json"

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setCode(Ljava/lang/String;)V

    .line 68
    :cond_1
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setMessage(Ljava/lang/String;)V

    .line 69
    :cond_2
    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setLevel(Ljava/lang/String;)V

    .line 70
    :cond_3
    return-object p0

    .line 63
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public copyFromObject(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    .locals 1
    .parameter "json"

    .prologue
    .line 53
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setCode(Ljava/lang/String;)V

    .line 54
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setMessage(Ljava/lang/String;)V

    .line 55
    :cond_1
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setLevel(Ljava/lang/String;)V

    .line 56
    :cond_2
    return-object p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .parameter "level"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->level:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->message:Ljava/lang/String;

    .line 44
    return-void
.end method
