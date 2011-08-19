.class public Lnet/yostore/aws/model/http/AWSHttpUploader;
.super Ljava/lang/Object;
.source "AWSHttpUploader.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0xe4e1c0

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AWSHttpUploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CallFunction(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 8
    .parameter "url"
    .parameter "paramNames"
    .parameter "paramVals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Lnet/yostore/aws/api/sax/DirectUpload;

    invoke-direct {v1}, Lnet/yostore/aws/api/sax/DirectUpload;-><init>()V

    .line 161
    .local v1, handler:Lnet/yostore/aws/api/sax/DirectUpload;
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 167
    .local v3, supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 168
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 170
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 171
    .local v2, http_params:Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 174
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    const-string v3, "http.protocol.version"

    .end local v3           #supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 176
    const v3, 0xe4e1c0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 177
    const v3, 0xe4e1c0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 179
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 181
    .local v3, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez p1, :cond_0

    .line 182
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 184
    :cond_0
    if-nez p2, :cond_1

    .line 185
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 188
    :cond_1
    array-length v0, p1

    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    array-length v2, p2

    .end local v2           #http_params:Lorg/apache/http/params/HttpParams;
    if-eq v0, v2, :cond_2

    .line 189
    const-string p0, "AWSHttpUploader"

    .end local p0
    const-string p1, "Incompatible nuber of param names and values, bailing on upload!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 p0, 0x0

    .line 325
    .end local p2
    :goto_0
    :sswitch_0
    return-object p0

    .line 193
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_2
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 195
    .local v5, sig_params:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 198
    .local v4, response:Lorg/apache/http/HttpResponse;
    const/4 v0, 0x0

    .line 204
    .local v0, file:Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    array-length v6, p1

    if-lt v2, v6, :cond_3

    .line 216
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    .end local p1
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 218
    .local p1, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance p2, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;

    .end local p2
    invoke-direct {p2}, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;-><init>()V

    .line 220
    .local p2, mp_entity:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;
    invoke-interface {v5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .end local p0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2           #i:I
    .end local v5           #sig_params:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_5

    .line 223
    const-string p0, "userfile"

    new-instance v2, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, p0, v2}, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 224
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 226
    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object p2

    .line 227
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 229
    .local p0, resEntity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_7

    .line 230
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    .end local p0           #resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {p0}, Lnet/yostore/aws/model/http/AWSHttpUploader;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 232
    .local p0, content:Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .end local p1           #httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    .line 241
    .end local v0           #file:Ljava/io/File;
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #content:Ljava/lang/String;
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9

    .line 244
    .local p1, is:Ljava/io/InputStream;
    :try_start_2
    sget-object p0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {p1, p0, v1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 245
    invoke-virtual {v1}, Lnet/yostore/aws/api/sax/DirectUpload;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .line 246
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9

    move-result p1

    .end local p1           #is:Ljava/io/InputStream;
    sparse-switch p1, :sswitch_data_0

    move-object p0, p2

    .line 323
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    :goto_3
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p0

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 325
    const/4 p0, 0x0

    goto :goto_0

    .line 209
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v5       #sig_params:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p0, url:Ljava/lang/String;
    .local p1, paramNames:[Ljava/lang/String;
    .local p2, paramVals:[Ljava/lang/String;
    :cond_3
    :try_start_3
    aget-object v6, p1, v2

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 210
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    aget-object v6, p2, v2

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v0       #file:Ljava/io/File;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 213
    :cond_4
    aget-object v6, p1, v2

    aget-object v7, p2, v2

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_4

    .line 304
    .end local v0           #file:Ljava/io/File;
    .end local v2           #i:I
    .end local v5           #sig_params:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0           #url:Ljava/lang/String;
    .end local p1           #paramNames:[Ljava/lang/String;
    .end local p2           #paramVals:[Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object p1, v4

    .line 305
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p0, e:Lorg/apache/http/client/ClientProtocolException;
    .local p1, response:Lorg/apache/http/HttpResponse;
    :goto_5
    invoke-virtual {p0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto :goto_3

    .line 220
    .end local p0           #response:Lorg/apache/http/HttpResponse;
    .restart local v0       #file:Ljava/io/File;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .local p1, httppost:Lorg/apache/http/client/methods/HttpPost;
    .local p2, mp_entity:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;
    :cond_5
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 221
    .local p0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-direct {v6, p0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v6}, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_a

    goto/16 :goto_2

    .line 306
    .end local v0           #file:Ljava/io/File;
    .end local p1           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #mp_entity:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;
    :catch_1
    move-exception p0

    move-object p1, v4

    .line 310
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p0, e:Ljava/io/IOException;
    .local p1, response:Lorg/apache/http/HttpResponse;
    :goto_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto :goto_3

    .line 250
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .local p2, response:Lorg/apache/http/HttpResponse;
    :sswitch_1
    :try_start_5
    new-instance p0, Lnet/yostore/aws/api/exception/AAAException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/AAAException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9

    .line 279
    :catch_2
    move-exception p0

    .line 280
    .local p0, e:Ljava/net/MalformedURLException;
    :try_start_6
    const-string p1, "AWSHttpUploader"

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance p1, Lnet/yostore/aws/api/exception/UrlException;

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/net/MalformedURLException;
    invoke-direct {p1, p0}, Lnet/yostore/aws/api/exception/UrlException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9

    .line 304
    :catch_3
    move-exception p0

    move-object p1, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .restart local p1       #response:Lorg/apache/http/HttpResponse;
    goto :goto_5

    .line 252
    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_2
    :try_start_7
    new-instance p0, Lnet/yostore/aws/api/exception/FileExistedException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/FileExistedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_9

    .line 282
    :catch_4
    move-exception p0

    .line 283
    .local p0, e:Ljava/net/ProtocolException;
    :try_start_8
    const-string p1, "AWSHttpUploader"

    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance p1, Lnet/yostore/aws/api/exception/HttpException;

    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/net/ProtocolException;
    invoke-direct {p1, p0}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9

    .line 306
    :catch_5
    move-exception p0

    move-object p1, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .restart local p1       #response:Lorg/apache/http/HttpResponse;
    goto :goto_6

    .line 254
    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_3
    :try_start_9
    new-instance p0, Lnet/yostore/aws/api/exception/BackupPCNotExistException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/BackupPCNotExistException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 285
    :catch_6
    move-exception p0

    .line 286
    .local p0, e:Ljava/io/IOException;
    :try_start_a
    const-string p1, "AWSHttpUploader"

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p1, Lnet/yostore/aws/api/exception/HttpException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-direct {p1, p0}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9

    .line 311
    :catch_7
    move-exception p0

    move-object p1, p2

    .line 315
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, e:Ljava/lang/IllegalStateException;
    .restart local p1       #response:Lorg/apache/http/HttpResponse;
    :goto_7
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 258
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_4
    :try_start_b
    new-instance p0, Lnet/yostore/aws/api/exception/NoMoreWSSpaceException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/NoMoreWSSpaceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_9

    .line 288
    :catch_8
    move-exception p0

    .line 289
    .local p0, e:Lorg/xml/sax/SAXException;
    :try_start_c
    const-string p1, "AWSHttpUploader"

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Lorg/xml/sax/SAXException;
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_9

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 261
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_5
    :try_start_d
    new-instance p0, Lnet/yostore/aws/api/exception/AAAFreezeException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/AAAFreezeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_9

    .line 316
    :catch_9
    move-exception p0

    move-object p1, p2

    .line 320
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .restart local p1       #response:Lorg/apache/http/HttpResponse;
    :goto_8
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 263
    .local p0, upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    :sswitch_6
    :try_start_e
    new-instance p0, Lnet/yostore/aws/api/exception/RegisterException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/RegisterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_7
    new-instance p0, Lnet/yostore/aws/api/exception/OTPAuthException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/OTPAuthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_8
    new-instance p0, Lnet/yostore/aws/api/exception/OTPLockException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/OTPLockException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_9
    new-instance p0, Lnet/yostore/aws/api/exception/CIDCountException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/CIDCountException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_a
    new-instance p0, Lnet/yostore/aws/api/exception/OTPCidException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/OTPCidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    .restart local p0       #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_b
    new-instance p0, Lnet/yostore/aws/api/exception/CaptchaException;

    .end local p0           #upresponse:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string p1, "AWSHttpUploader"

    invoke-direct {p0, p1}, Lnet/yostore/aws/api/exception/CaptchaException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_9

    .line 296
    .local p0, content:Ljava/lang/String;
    :cond_6
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 301
    .restart local v0       #file:Ljava/io/File;
    .local p0, resEntity:Lorg/apache/http/HttpEntity;
    .local p1, httppost:Lorg/apache/http/client/methods/HttpPost;
    :cond_7
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 316
    .end local v0           #file:Ljava/io/File;
    .end local p0           #resEntity:Lorg/apache/http/HttpEntity;
    .end local p1           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_a
    move-exception p0

    move-object p1, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local p1, response:Lorg/apache/http/HttpResponse;
    goto :goto_8

    .line 311
    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catch_b
    move-exception p0

    move-object p1, v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .restart local p1       #response:Lorg/apache/http/HttpResponse;
    goto :goto_7

    .line 246
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

.method public static UploadArtifact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "url"
    .parameter "uploadFolder"
    .parameter "uploadFileName"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 138
    .local v0, pNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 140
    .local v1, pVals:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v4, "pa"

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v4, "rn"

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v4, Ljava/lang/String;

    invoke-static {p2}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v4, "filename"

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v1, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    .local v3, paramVals:[Ljava/lang/String;
    move-object v2, v3

    .line 151
    .local v2, paramNames:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #paramNames:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 152
    .restart local v2       #paramNames:[Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #paramVals:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 154
    .restart local v3       #paramVals:[Ljava/lang/String;
    invoke-static {p0, v2, v3}, Lnet/yostore/aws/model/http/AWSHttpUploader;->CallFunction(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    return-object v4
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"

    .prologue
    .line 114
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 119
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 132
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 120
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

    .line 122
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 123
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 126
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 130
    :goto_2
    throw v4

    .line 127
    :catch_2
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getUploadAttribute()Ljava/lang/String;
    .locals 6

    .prologue
    .line 329
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, dateStr:Ljava/lang/String;
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    .line 331
    .local v0, at:Lnet/yostore/aws/api/entity/Attribute;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/Attribute;->toXml()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
