.class public Lcom/nvidia/tegrazone/services/NVServices;
.super Ljava/lang/Thread;
.source "NVServices.java"


# static fields
.field public static ARRAY_MODE:Ljava/lang/String;

.field public static OBJECT_MODE:Ljava/lang/String;

.field public static POST_MODE:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field public isRunning:Ljava/lang/Boolean;

.field public myString:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public responseArray:Lorg/json/JSONArray;

.field public responseObject:Lorg/json/JSONObject;

.field public serviceMode:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "objectMode"

    sput-object v0, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    .line 38
    const-string v0, "arrayMode"

    sput-object v0, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    .line 39
    const-string v0, "postMode"

    sput-object v0, Lcom/nvidia/tegrazone/services/NVServices;->POST_MODE:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 35
    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->params:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public callArrayService(Ljava/lang/String;Landroid/os/Handler;)Lorg/json/JSONArray;
    .locals 1
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->isRunning:Ljava/lang/Boolean;

    .line 147
    sget-object v0, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->serviceMode:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/NVServices;->url:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/NVServices;->start()V

    .line 151
    iput-object p2, p0, Lcom/nvidia/tegrazone/services/NVServices;->handler:Landroid/os/Handler;

    .line 152
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method public callObjectService(Ljava/lang/String;Landroid/os/Handler;)Lorg/json/JSONObject;
    .locals 1
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->isRunning:Ljava/lang/Boolean;

    .line 160
    sget-object v0, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->serviceMode:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/NVServices;->url:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/NVServices;->start()V

    .line 164
    iput-object p2, p0, Lcom/nvidia/tegrazone/services/NVServices;->handler:Landroid/os/Handler;

    .line 165
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public callPostService(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "url"
    .parameter "handler"
    .parameter "params"

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->isRunning:Ljava/lang/Boolean;

    .line 173
    sget-object v0, Lcom/nvidia/tegrazone/services/NVServices;->POST_MODE:Ljava/lang/String;

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->serviceMode:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/nvidia/tegrazone/services/NVServices;->params:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/NVServices;->url:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/NVServices;->start()V

    .line 178
    iput-object p2, p0, Lcom/nvidia/tegrazone/services/NVServices;->handler:Landroid/os/Handler;

    .line 179
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getNoResultsErrorVO()Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    invoke-direct {v0}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;-><init>()V

    .line 195
    .local v0, error:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setCode(Ljava/lang/String;)V

    .line 196
    const-string v1, "warning"

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setLevel(Ljava/lang/String;)V

    .line 197
    const-string v1, "No Results"

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->setMessage(Ljava/lang/String;)V

    .line 198
    return-object v0
.end method

.method public handleError(Lcom/nvidia/tegrazone/model/vo/ErrorVO;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->isRunning:Ljava/lang/Boolean;

    .line 188
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/NVServices;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 54
    iput-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    .line 58
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 59
    .local v0, client:Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 61
    .local v9, response:Ljava/lang/String;
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->serviceMode:Ljava/lang/String;

    sget-object v11, Lcom/nvidia/tegrazone/services/NVServices;->POST_MODE:Ljava/lang/String;

    if-ne v10, v11, :cond_0

    .line 63
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 64
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->url:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .local v7, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->params:Ljava/lang/String;

    invoke-static {v10}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->getFeedbackListPaired(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 69
    .local v8, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 72
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 73
    .local v5, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 75
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 89
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v7           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    :try_start_2
    iput-object v9, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    .line 90
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 91
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->serviceMode:Ljava/lang/String;

    sget-object v11, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    if-ne v10, v11, :cond_3

    .line 93
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    const-string v11, "[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 94
    new-instance v10, Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    invoke-direct {v10}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    iget-object v12, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->copyFromArray(Lorg/json/JSONArray;)Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    move-result-object v10

    move-object v4, v10

    .line 96
    .local v4, errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    :goto_1
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->getCode()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_2

    .line 98
    :try_start_3
    new-instance v10, Lorg/json/JSONArray;

    iget-object v11, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 131
    .end local v4           #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    :goto_2
    const/4 v10, 0x0

    :try_start_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->isRunning:Ljava/lang/Boolean;

    .line 132
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #response:Ljava/lang/String;
    :goto_3
    return-void

    .line 83
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v9       #response:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->url:Ljava/lang/String;

    invoke-static {v10}, Lcom/nvidia/tegrazone/utils/NVUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nvidia/tegrazone/services/HTTP;->get(Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;

    move-result-object v10

    .line 84
    invoke-virtual {v10, v0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->use(Lorg/apache/http/client/HttpClient;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;

    move-result-object v10

    .line 85
    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->charset(Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;

    move-result-object v10

    .line 86
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->followRedirects(Z)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;

    move-result-object v10

    .line 87
    invoke-virtual {v10}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->asString()Ljava/lang/String;

    move-result-object v9

    .line 83
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/NVServices;->getNoResultsErrorVO()Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    move-result-object v10

    move-object v4, v10

    goto :goto_1

    .line 99
    .restart local v4       #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 101
    .local v2, e1:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 134
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #e1:Lorg/json/JSONException;
    .end local v4           #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    .end local v9           #response:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 136
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    invoke-direct {v4}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;-><init>()V

    .line 137
    .restart local v4       #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->message:Ljava/lang/String;

    .line 138
    const-string v10, "200"

    iput-object v10, v4, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->code:Ljava/lang/String;

    .line 139
    const-string v10, "error"

    iput-object v10, v4, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->level:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/services/NVServices;->handleError(Lcom/nvidia/tegrazone/model/vo/ErrorVO;)V

    goto :goto_3

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v9       #response:Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/services/NVServices;->handleError(Lcom/nvidia/tegrazone/model/vo/ErrorVO;)V

    goto :goto_3

    .line 110
    .end local v4           #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    :cond_3
    new-instance v10, Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    invoke-direct {v10}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;-><init>()V

    new-instance v11, Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->copyFromObject(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/ErrorVO;

    move-result-object v4

    .line 111
    .restart local v4       #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->getCode()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    if-nez v10, :cond_4

    .line 114
    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/nvidia/tegrazone/services/NVServices;->myString:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 115
    :catch_2
    move-exception v10

    move-object v2, v10

    .line 117
    .restart local v2       #e1:Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v2           #e1:Lorg/json/JSONException;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/services/NVServices;->handleError(Lcom/nvidia/tegrazone/model/vo/ErrorVO;)V

    goto :goto_3

    .line 127
    .end local v4           #errorCheck:Lcom/nvidia/tegrazone/model/vo/ErrorVO;
    :cond_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 128
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 79
    .restart local v6       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v7       #httppost:Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 77
    :catch_4
    move-exception v10

    goto/16 :goto_0
.end method
