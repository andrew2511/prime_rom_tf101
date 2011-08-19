.class Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;
.super Ljava/lang/Thread;
.source "RegisterNetworkConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/registration/RegisterNetworkConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/registration/RegisterNetworkConnect;


# direct methods
.method public constructor <init>(Lcom/infraware/registration/RegisterNetworkConnect;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    .line 164
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 166
    invoke-static {p1, p2}, Lcom/infraware/registration/RegisterNetworkConnect;->access$2(Lcom/infraware/registration/RegisterNetworkConnect;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 172
    const/4 v4, 0x0

    .line 175
    .local v4, in:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 176
    .local v6, info:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v11}, Lcom/infraware/registration/RegisterNetworkConnect;->access$3(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/brand;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v11}, Lcom/infraware/registration/RegisterNetworkConnect;->access$4(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/device;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v11}, Lcom/infraware/registration/RegisterNetworkConnect;->access$5(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/model;Android/os;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v11}, Lcom/infraware/registration/RegisterNetworkConnect;->access$6(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/os_version"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 180
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.protocol.expect-continue"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 181
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.connection.timeout"

    new-instance v12, Ljava/lang/Integer;

    const/16 v13, 0x1388

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 182
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.socket.timeout"

    new-instance v12, Ljava/lang/Integer;

    const/16 v13, 0x1388

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 183
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v10}, Lcom/infraware/registration/RegisterNetworkConnect;->access$7(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v7, postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "username"

    iget-object v12, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v12}, Lcom/infraware/registration/RegisterNetworkConnect;->access$8(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "email"

    iget-object v12, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v12}, Lcom/infraware/registration/RegisterNetworkConnect;->access$9(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "locale"

    iget-object v12, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v12}, Lcom/infraware/registration/RegisterNetworkConnect;->access$10(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "timezone"

    iget-object v12, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v12}, Lcom/infraware/registration/RegisterNetworkConnect;->access$11(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "kfield"

    iget-object v12, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v12}, Lcom/infraware/registration/RegisterNetworkConnect;->access$12(Lcom/infraware/registration/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "info"

    invoke-direct {v10, v11, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v2, v7, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 196
    .local v2, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 197
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 199
    .local v8, response:Lorg/apache/http/HttpResponse;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 205
    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v11, 0x1

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 226
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v7           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #result:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :goto_0
    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v10}, Lcom/infraware/registration/RegisterNetworkConnect;->access$1(Lcom/infraware/registration/RegisterNetworkConnect;)Lcom/infraware/registration/SyncNetworkingStep;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 227
    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-static {v10}, Lcom/infraware/registration/RegisterNetworkConnect;->access$1(Lcom/infraware/registration/RegisterNetworkConnect;)Lcom/infraware/registration/SyncNetworkingStep;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/infraware/registration/SyncNetworkingStep;->yourTurn(Z)V

    .line 228
    :cond_0
    return-void

    .line 206
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v7       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #result:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v10, "ERROR=100"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v11, 0x3

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 207
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_2
    const-string v10, "ERROR=101"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v11, 0x4

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 208
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_3
    const-string v10, "ERROR=110"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v11, 0x5

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 209
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_4
    const-string v10, "ERROR=111"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v11, 0x6

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 210
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_5
    const-string v10, "ERROR=112"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/4 v11, 0x7

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 211
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_6
    const-string v10, "ERROR=200"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0x8

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 212
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_7
    const-string v10, "ERROR=201"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0x9

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 213
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_8
    const-string v10, "ERROR=210"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0xa

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 214
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_9
    const-string v10, "ERROR=211"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0xb

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 215
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_a
    const-string v10, "ERROR=220"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0xc

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 216
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_b
    const-string v10, "ERROR=221"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0xd

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 217
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_c
    const-string v10, "ERROR=300"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0xe

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 218
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_d
    const-string v10, "ERROR=500"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0xf

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 219
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_e
    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0x10

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 221
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v7           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #result:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 223
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    iget-object v10, p0, Lcom/infraware/registration/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/registration/RegisterNetworkConnect;

    const/16 v11, 0x11

    iput v11, v10, Lcom/infraware/registration/RegisterNetworkConnect;->mResult:I

    goto/16 :goto_0

    .line 221
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v7       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v10

    move-object v1, v10

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method
