.class Lcom/layar/data/event/EventsManager$PostTask;
.super Landroid/os/AsyncTask;
.source "EventsManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/event/EventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/layar/data/event/Event;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/layar/util/HttpManager$ResponseHandler;"
    }
.end annotation


# instance fields
.field private mResponse:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/data/event/EventsManager;


# direct methods
.method private constructor <init>(Lcom/layar/data/event/EventsManager;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/layar/data/event/EventsManager$PostTask;->this$0:Lcom/layar/data/event/EventsManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/event/EventsManager$PostTask;->mResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/data/event/EventsManager;Lcom/layar/data/event/EventsManager$PostTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/layar/data/event/EventsManager$PostTask;-><init>(Lcom/layar/data/event/EventsManager;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/layar/data/event/Event;

    invoke-virtual {p0, p1}, Lcom/layar/data/event/EventsManager$PostTask;->doInBackground([Lcom/layar/data/event/Event;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/layar/data/event/Event;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 156
    :try_start_0
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v1

    .line 157
    .local v1, eventsBuilder:Lorg/json/JSONStringer;
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 163
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "/stream/api/events/"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 165
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v4, "dev.layar.com"

    invoke-direct {v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, httpHost:Lorg/apache/http/HttpHost;
    invoke-static {v2, v3, p0}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1           #eventsBuilder:Lorg/json/JSONStringer;
    .end local v2           #httpHost:Lorg/apache/http/HttpHost;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    iget-object v4, p0, Lcom/layar/data/event/EventsManager$PostTask;->mResponse:Ljava/lang/String;

    return-object v4

    .line 157
    .restart local v1       #eventsBuilder:Lorg/json/JSONStringer;
    :cond_0
    :try_start_1
    aget-object v0, p1, v5

    .line 158
    .local v0, event:Lcom/layar/data/event/Event;
    invoke-virtual {v0, v1}, Lcom/layar/data/event/Event;->generateJSONString(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    .end local v0           #event:Lcom/layar/data/event/Event;
    .end local v1           #eventsBuilder:Lorg/json/JSONStringer;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 169
    :catch_1
    move-exception v4

    goto :goto_1

    .line 167
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/event/EventsManager$PostTask;->mResponse:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iput-object p1, p0, Lcom/layar/data/event/EventsManager$PostTask;->mResponse:Ljava/lang/String;

    .line 201
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/data/event/EventsManager$PostTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    if-nez p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/layar/data/event/EventsManager$PostTask;->this$0:Lcom/layar/data/event/EventsManager;

    invoke-static {v0}, Lcom/layar/data/event/EventsManager;->access$0(Lcom/layar/data/event/EventsManager;)V

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/layar/data/event/EventsManager$PostTask;->this$0:Lcom/layar/data/event/EventsManager;

    invoke-static {v0}, Lcom/layar/data/event/EventsManager;->access$1(Lcom/layar/data/event/EventsManager;)V

    .line 189
    iget-object v0, p0, Lcom/layar/data/event/EventsManager$PostTask;->this$0:Lcom/layar/data/event/EventsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/layar/data/event/EventsManager;->access$2(Lcom/layar/data/event/EventsManager;J)V

    goto :goto_0
.end method
