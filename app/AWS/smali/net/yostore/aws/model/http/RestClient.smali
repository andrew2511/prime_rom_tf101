.class public Lnet/yostore/aws/model/http/RestClient;
.super Ljava/lang/Object;
.source "RestClient.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0xe4e1c0

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "RestClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CallFunction(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 9
    .parameter "apicfg"
    .parameter "url"
    .parameter "paramNames"
    .parameter "paramVals"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Lnet/yostore/aws/api/sax/DirectUpload;

    invoke-direct {v1}, Lnet/yostore/aws/api/sax/DirectUpload;-><init>()V

    .line 165
    .local v1, handler:Lnet/yostore/aws/api/sax/DirectUpload;
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 171
    .local v2, supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance p0, Lorg/apache/http/conn/scheme/Scheme;

    .end local p0
    const-string v0, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 172
    new-instance p0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v0, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 174
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 175
    .local v0, http_params:Lorg/apache/http/params/HttpParams;
    new-instance p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p0, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 178
    .local p0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    const-string v2, "http.protocol.version"

    .end local v2           #supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 180
    const v2, 0xe4e1c0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 181
    const v2, 0xe4e1c0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 183
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 185
    .local v2, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez p2, :cond_0

    .line 186
    const/4 p0, 0x0

    new-array p2, p0, [Ljava/lang/String;

    .line 188
    .end local p0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_0
    if-nez p3, :cond_1

    .line 189
    const/4 p0, 0x0

    new-array p3, p0, [Ljava/lang/String;

    .line 192
    :cond_1
    array-length p0, p2

    array-length v0, p3

    .end local v0           #http_params:Lorg/apache/http/params/HttpParams;
    if-eq p0, v0, :cond_2

    .line 193
    const-string p0, "RestClient"

    const-string p1, "Incompatible nuber of param names and values, bailing on upload!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 p0, 0x0

    .line 341
    .end local v1           #handler:Lnet/yostore/aws/api/sax/DirectUpload;
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    :sswitch_0
    return-object p0

    .line 197
    .restart local v1       #handler:Lnet/yostore/aws/api/sax/DirectUpload;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_2
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 199
    .local v5, sig_params:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 202
    .local v4, response:Lorg/apache/http/HttpResponse;
    const/4 p0, 0x0

    .line 207
    .local p0, file:Ljava/io/File;
    :try_start_0
    const-string v3, ""
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9

    .line 208
    .local v3, upid:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v6, v3

    .end local v3           #upid:Ljava/lang/String;
    .local v6, upid:Ljava/lang/String;
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    move-object v0, p0

    .end local p0           #file:Ljava/io/File;
    .local v0, file:Ljava/io/File;
    :goto_1
    :try_start_1
    array-length p0, p2

    if-lt v3, p0, :cond_5

    .line 219
    new-instance p2, Lorg/apache/http/client/methods/HttpPost;

    .end local p2
    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 221
    .local p2, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance p1, Lnet/yostore/aws/model/http/RestClient$1;

    .end local p1
    invoke-direct {p1, p4, v6, v2}, Lnet/yostore/aws/model/http/RestClient$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 234
    .local p1, mp_entity:Lnet/yostore/aws/model/http/MultipartEntityMonitored;
    invoke-interface {v5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .end local v3           #i:I
    .end local p3
    .end local p4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    .line 237
    const-string p0, "userfile"

    new-instance p3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {p3, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, p0, p3}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 238
    invoke-virtual {p2, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 240
    invoke-virtual {v2, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object p2

    .line 241
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 243
    .local p0, resEntity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_9

    .line 244
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    .end local p0           #resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {p0}, Lnet/yostore/aws/model/http/RestClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 246
    .local p0, content:Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .end local p1           #mp_entity:Lnet/yostore/aws/model/http/MultipartEntityMonitored;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_8

    .line 255
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #content:Ljava/lang/String;
    const-string p3, "UTF-8"

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8

    .line 258
    .local p1, is:Ljava/io/InputStream;
    :try_start_3
    sget-object p0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {p1, p0, v1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 259
    invoke-virtual {v1}, Lnet/yostore/aws/api/sax/DirectUpload;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .line 260
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result p1

    .end local p1           #is:Ljava/io/InputStream;
    if-eqz p1, :cond_3

    sget-object p1, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz p1, :cond_4

    sget-object p1, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide p3, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, p3, v3

    if-nez p1, :cond_4

    .line 261
    :cond_3
    sget-object p1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v1

    .end local v1           #handler:Lnet/yostore/aws/api/sax/DirectUpload;
    invoke-static {p1, p3, p4, v1}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 262
    :cond_4
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8

    move-result p1

    sparse-switch p1, :sswitch_data_0

    move-object p0, p2

    .line 339
    .end local v0           #file:Ljava/io/File;
    .end local v6           #upid:Ljava/lang/String;
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    :goto_3
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p0

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 341
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 209
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #handler:Lnet/yostore/aws/api/sax/DirectUpload;
    .restart local v3       #i:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #upid:Ljava/lang/String;
    .local p1, url:Ljava/lang/String;
    .local p2, paramNames:[Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_5
    :try_start_4
    aget-object p0, p2, v3

    const-string v7, "upid"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 210
    aget-object p0, p3, v3

    .line 216
    .end local v6           #upid:Ljava/lang/String;
    .local p0, upid:Ljava/lang/String;
    :goto_4
    aget-object v6, p2, v3

    aget-object v7, p3, v3

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, p0

    .end local p0           #upid:Ljava/lang/String;
    .restart local v6       #upid:Ljava/lang/String;
    move-object p0, v0

    .line 208
    .end local v0           #file:Ljava/io/File;
    .local p0, file:Ljava/io/File;
    :goto_5
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    move-object v0, p0

    .end local p0           #file:Ljava/io/File;
    .local v0, file:Ljava/io/File;
    goto/16 :goto_1

    .line 212
    :cond_6
    aget-object p0, p2, v3

    const-string v7, "filename"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 213
    new-instance p0, Ljava/io/File;

    aget-object v7, p3, v3

    invoke-direct {p0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .end local v0           #file:Ljava/io/File;
    .restart local p0       #file:Ljava/io/File;
    goto :goto_5

    .line 234
    .end local v3           #i:I
    .end local p0           #file:Ljava/io/File;
    .end local p3
    .end local p4
    .restart local v0       #file:Ljava/io/File;
    .local p1, mp_entity:Lnet/yostore/aws/model/http/MultipartEntityMonitored;
    .local p2, httppost:Lorg/apache/http/client/methods/HttpPost;
    :cond_7
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 235
    .local p0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, p0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v3}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_a

    goto/16 :goto_2

    .line 320
    .end local v6           #upid:Ljava/lang/String;
    .end local p1           #mp_entity:Lnet/yostore/aws/model/http/MultipartEntityMonitored;
    .end local p2           #httppost:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception p0

    move-object p1, v0

    .end local v0           #file:Ljava/io/File;
    .local p1, file:Ljava/io/File;
    move-object p2, v4

    .line 321
    .end local v1           #handler:Lnet/yostore/aws/api/sax/DirectUpload;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p0, e:Lorg/apache/http/client/ClientProtocolException;
    .local p2, response:Lorg/apache/http/HttpResponse;
    :goto_6
    invoke-virtual {p0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto :goto_3

    .line 266
    .end local p1           #file:Ljava/io/File;
    .restart local v0       #file:Ljava/io/File;
    .restart local v6       #upid:Ljava/lang/String;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_1
    :try_start_5
    new-instance p0, Lnet/yostore/aws/api/exception/AAAException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/AAAException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8

    .line 295
    :catch_1
    move-exception p0

    .line 296
    .local p0, e:Ljava/net/MalformedURLException;
    :try_start_6
    const-string p1, "RestClient"

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p1, Lnet/yostore/aws/api/exception/UrlException;

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/net/MalformedURLException;
    invoke-direct {p1, p0}, Lnet/yostore/aws/api/exception/UrlException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8

    .line 320
    :catch_2
    move-exception p0

    move-object p1, v0

    .end local v0           #file:Ljava/io/File;
    .restart local p1       #file:Ljava/io/File;
    goto :goto_6

    .line 268
    .end local p1           #file:Ljava/io/File;
    .restart local v0       #file:Ljava/io/File;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_2
    :try_start_7
    new-instance p0, Lnet/yostore/aws/api/exception/FileExistedException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/FileExistedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8

    .line 298
    :catch_3
    move-exception p0

    .line 299
    .local p0, e:Ljava/net/ProtocolException;
    :try_start_8
    const-string p1, "RestClient"

    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p1, Lnet/yostore/aws/api/exception/HttpException;

    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/net/ProtocolException;
    invoke-direct {p1, p0}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 322
    :catch_4
    move-exception p0

    move-object p1, v0

    .line 326
    .end local v0           #file:Ljava/io/File;
    .end local v6           #upid:Ljava/lang/String;
    .local p0, e:Ljava/io/IOException;
    .restart local p1       #file:Ljava/io/File;
    :goto_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 270
    .end local p1           #file:Ljava/io/File;
    .restart local v0       #file:Ljava/io/File;
    .restart local v6       #upid:Ljava/lang/String;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_3
    :try_start_9
    new-instance p0, Lnet/yostore/aws/api/exception/BackupPCNotExistException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/BackupPCNotExistException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8

    .line 301
    :catch_5
    move-exception p0

    .line 302
    .local p0, e:Ljava/io/IOException;
    :try_start_a
    const-string p1, "RestClient"

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance p1, Lnet/yostore/aws/api/exception/HttpException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-direct {p1, p0}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_8

    .line 327
    :catch_6
    move-exception p0

    move-object p1, v0

    .line 331
    .end local v0           #file:Ljava/io/File;
    .end local v6           #upid:Ljava/lang/String;
    .local p0, e:Ljava/lang/IllegalStateException;
    .restart local p1       #file:Ljava/io/File;
    :goto_8
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 272
    .end local p1           #file:Ljava/io/File;
    .restart local v0       #file:Ljava/io/File;
    .restart local v6       #upid:Ljava/lang/String;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_4
    const/4 p0, 0x0

    :try_start_b
    sput-boolean p0, Lnet/yostore/aws/service/AWSService;->isSpaceEnough:Z

    .line 274
    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    new-instance p0, Lnet/yostore/aws/api/exception/NoMoreWSSpaceException;

    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/NoMoreWSSpaceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_8

    .line 304
    :catch_7
    move-exception p0

    .line 305
    .local p0, e:Lorg/xml/sax/SAXException;
    :try_start_c
    const-string p1, "RestClient"

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Lorg/xml/sax/SAXException;
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_8

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 277
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_5
    :try_start_d
    new-instance p0, Lnet/yostore/aws/api/exception/AAAFreezeException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/AAAFreezeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_8

    .line 332
    :catch_8
    move-exception p0

    move-object p1, v0

    .line 336
    .end local v0           #file:Ljava/io/File;
    .end local v6           #upid:Ljava/lang/String;
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .restart local p1       #file:Ljava/io/File;
    :goto_9
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 279
    .end local p1           #file:Ljava/io/File;
    .restart local v0       #file:Ljava/io/File;
    .restart local v6       #upid:Ljava/lang/String;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_6
    :try_start_e
    new-instance p0, Lnet/yostore/aws/api/exception/RegisterException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/RegisterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_7
    new-instance p0, Lnet/yostore/aws/api/exception/OTPAuthException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/OTPAuthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_8
    new-instance p0, Lnet/yostore/aws/api/exception/OTPLockException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/OTPLockException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_9
    new-instance p0, Lnet/yostore/aws/api/exception/CIDCountException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/CIDCountException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_a
    new-instance p0, Lnet/yostore/aws/api/exception/OTPCidException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/OTPCidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_b
    new-instance p0, Lnet/yostore/aws/api/exception/CaptchaException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "RestClient"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/CaptchaException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_8

    .line 312
    .restart local v1       #handler:Lnet/yostore/aws/api/sax/DirectUpload;
    .local p0, content:Ljava/lang/String;
    :cond_8
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 317
    .local p0, resEntity:Lorg/apache/http/HttpEntity;
    .local p1, mp_entity:Lnet/yostore/aws/model/http/MultipartEntityMonitored;
    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 332
    .end local v0           #file:Ljava/io/File;
    .end local v6           #upid:Ljava/lang/String;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .local p0, file:Ljava/io/File;
    .local p1, url:Ljava/lang/String;
    .local p2, paramNames:[Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_9
    move-exception p1

    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    move-object v8, p0

    .end local p0           #file:Ljava/io/File;
    .local v8, file:Ljava/io/File;
    move-object p0, p1

    move-object p1, v8

    .end local v8           #file:Ljava/io/File;
    .local p1, file:Ljava/io/File;
    goto :goto_9

    .end local p1           #file:Ljava/io/File;
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .end local p3
    .end local p4
    .restart local v0       #file:Ljava/io/File;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_a
    move-exception p0

    move-object p1, v0

    .end local v0           #file:Ljava/io/File;
    .restart local p1       #file:Ljava/io/File;
    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    goto :goto_9

    .line 327
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local p0       #file:Ljava/io/File;
    .local p1, url:Ljava/lang/String;
    .local p2, paramNames:[Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_b
    move-exception p1

    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    move-object v8, p0

    .end local p0           #file:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    move-object p0, p1

    move-object p1, v8

    .end local v8           #file:Ljava/io/File;
    .local p1, file:Ljava/io/File;
    goto :goto_8

    .end local p1           #file:Ljava/io/File;
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .end local p3
    .end local p4
    .restart local v0       #file:Ljava/io/File;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_c
    move-exception p0

    move-object p1, v0

    .end local v0           #file:Ljava/io/File;
    .restart local p1       #file:Ljava/io/File;
    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    goto :goto_8

    .line 322
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local p0       #file:Ljava/io/File;
    .local p1, url:Ljava/lang/String;
    .local p2, paramNames:[Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_d
    move-exception p1

    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    move-object v8, p0

    .end local p0           #file:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    move-object p0, p1

    move-object p1, v8

    .end local v8           #file:Ljava/io/File;
    .local p1, file:Ljava/io/File;
    goto/16 :goto_7

    .end local p1           #file:Ljava/io/File;
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .end local p3
    .end local p4
    .restart local v0       #file:Ljava/io/File;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_e
    move-exception p0

    move-object p1, v0

    .end local v0           #file:Ljava/io/File;
    .restart local p1       #file:Ljava/io/File;
    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_7

    .line 320
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local p0       #file:Ljava/io/File;
    .local p1, url:Ljava/lang/String;
    .local p2, paramNames:[Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_f
    move-exception p1

    move-object p2, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    move-object v8, p0

    .end local p0           #file:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    move-object p0, p1

    move-object p1, v8

    .end local v8           #file:Ljava/io/File;
    .local p1, file:Ljava/io/File;
    goto/16 :goto_6

    .restart local v0       #file:Ljava/io/File;
    .restart local v3       #i:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #upid:Ljava/lang/String;
    .local p1, url:Ljava/lang/String;
    .local p2, paramNames:[Ljava/lang/String;
    :cond_a
    move-object p0, v6

    .end local v6           #upid:Ljava/lang/String;
    .local p0, upid:Ljava/lang/String;
    goto/16 :goto_4

    .line 262
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xd6 -> :sswitch_2
        0xda -> :sswitch_3
        0xe0 -> :sswitch_4
        0xe2 -> :sswitch_5
        0xea -> :sswitch_6
        0x1f8 -> :sswitch_7
        0x1f9 -> :sswitch_8
        0x1fa -> :sswitch_9
        0x1fb -> :sswitch_a
        0x1fc -> :sswitch_b
    .end sparse-switch
.end method

.method public static ChineseToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 360
    const-string v1, ""

    .line 365
    .local v1, rtn:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "Big5"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #rtn:Ljava/lang/String;
    .local v2, rtn:Ljava/lang/String;
    move-object v1, v2

    .line 372
    .end local v2           #rtn:Ljava/lang/String;
    .restart local v1       #rtn:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 370
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static UploadArtifact(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/UploadItem;Landroid/content/Context;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 7
    .parameter "apicfg"
    .parameter "uitem"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 137
    .local v0, pNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 138
    .local v1, pVals:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/webrelay/directupload/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, url:Ljava/lang/String;
    const-string v5, "upid"

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    iget-wide v5, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v5, "at"

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {p1}, Lnet/yostore/aws/model/http/RestClient;->getUploadAttribute(Lnet/yostore/aws/sqlite/entity/UploadItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v5, "pa"

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    iget-wide v5, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v5, "rn"

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v5, Ljava/lang/String;

    iget-object v6, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v5, "filename"

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/String;

    .local v3, paramVals:[Ljava/lang/String;
    move-object v2, v3

    .line 155
    .local v2, paramNames:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #paramNames:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 156
    .restart local v2       #paramNames:[Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #paramVals:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 158
    .restart local v3       #paramVals:[Ljava/lang/String;
    invoke-static {p0, v4, v2, v3, p2}, Lnet/yostore/aws/model/http/RestClient;->CallFunction(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    return-object v5
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"

    .prologue
    .line 113
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 118
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 131
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 119
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 122
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 125
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :goto_2
    throw v4

    .line 126
    :catch_2
    move-exception v0

    .line 127
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 126
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 127
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getUploadAttribute(Lnet/yostore/aws/sqlite/entity/UploadItem;)Ljava/lang/String;
    .locals 7
    .parameter "uitem"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 345
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, dateStr:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, uf:Ljava/io/File;
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    .line 348
    .local v0, at:Lnet/yostore/aws/api/entity/Attribute;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    .line 355
    :goto_0
    const-string v3, "android"

    invoke-virtual {v0, v3}, Lnet/yostore/aws/api/entity/Attribute;->setxMachinename(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/Attribute;->toXml()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 353
    :cond_0
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    goto :goto_0
.end method
