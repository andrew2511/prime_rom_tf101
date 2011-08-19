.class public Landroid/content/XmlDocumentProvider;
.super Landroid/content/ContentProvider;
.source "XmlDocumentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/XmlDocumentProvider$XMLCursor;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XmlDocumentProvider"


# instance fields
.field private mHttpClient:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 295
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getResourceXmlPullParser(Landroid/net/Uri;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 7
    .parameter "resourceUri"

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/content/XmlDocumentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    .line 256
    .local v1, resourceId:Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v2, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v3, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v2

    .line 259
    .end local v1           #resourceId:Landroid/content/ContentResolver$OpenResourceIdResult;
    :goto_14
    return-object v2

    .line 257
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 258
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "XmlDocumentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML resource not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 268
    const-string/jumbo v0, "vnd.android.cursor.dir/xmldoc"

    return-object v0
.end method

.method protected getUriXmlPullParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 13
    .parameter "url"

    .prologue
    const/4 v10, 0x0

    .line 210
    const/4 v5, 0x0

    .line 212
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 213
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 214
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_d} :catch_3e

    move-result-object v5

    .line 220
    const/4 v4, 0x0

    .line 222
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_f
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 223
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "Android"

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    iput-object v7, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 224
    iget-object v7, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v7, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 225
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_38

    .line 226
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 227
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_38

    .line 228
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_37} :catch_49

    move-result-object v4

    .line 237
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_38
    const/4 v7, 0x0

    :try_start_39
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3c} :catch_65

    move-object v7, v5

    .line 243
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :goto_3d
    return-object v7

    .line 215
    :catch_3e
    move-exception v7

    move-object v0, v7

    .line 216
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "XmlDocumentProvider"

    const-string v8, "Unable to create XmlPullParser"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 217
    goto :goto_3d

    .line 231
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_49
    move-exception v7

    move-object v0, v7

    .line 232
    .local v0, e:Ljava/io/IOException;
    const-string v7, "XmlDocumentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while retrieving XML file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 233
    goto :goto_3d

    .line 238
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :catch_65
    move-exception v0

    .line 239
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "XmlDocumentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while reading XML file from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 240
    goto :goto_3d
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v9, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    iput-object v9, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 173
    const-string/jumbo v6, "url"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 175
    invoke-virtual {p0, v4}, Landroid/content/XmlDocumentProvider;->getUriXmlPullParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 185
    :cond_11
    :goto_11
    if-eqz v1, :cond_7f

    .line 186
    new-instance v5, Landroid/content/XmlDocumentProvider$XMLCursor;

    invoke-direct {v5, p3, p2}, Landroid/content/XmlDocumentProvider$XMLCursor;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    .local v5, xmlCursor:Landroid/content/XmlDocumentProvider$XMLCursor;
    :try_start_18
    invoke-virtual {v5, v1}, Landroid/content/XmlDocumentProvider$XMLCursor;->parseWith(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1b} :catch_81

    .line 195
    iget-object v6, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_24

    .line 196
    iget-object v6, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_24
    move-object v6, v5

    .line 201
    .end local v5           #xmlCursor:Landroid/content/XmlDocumentProvider$XMLCursor;
    :goto_25
    return-object v6

    .line 177
    :cond_26
    const-string/jumbo v6, "resource"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, resource:Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/XmlDocumentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 181
    .local v3, resourceUri:Landroid/net/Uri;
    invoke-virtual {p0, v3}, Landroid/content/XmlDocumentProvider;->getResourceXmlPullParser(Landroid/net/Uri;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    goto :goto_11

    .line 190
    .end local v2           #resource:Ljava/lang/String;
    .end local v3           #resourceUri:Landroid/net/Uri;
    .restart local v5       #xmlCursor:Landroid/content/XmlDocumentProvider$XMLCursor;
    :catch_5d
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    :try_start_5e
    const-string v6, "XmlDocumentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I/O error while parsing XML "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_a1

    .line 195
    iget-object v6, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_7f

    .line 196
    iget-object v6, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .end local v0           #e:Ljava/io/IOException;
    :goto_7c
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v5           #xmlCursor:Landroid/content/XmlDocumentProvider$XMLCursor;
    :cond_7f
    move-object v6, v9

    .line 201
    goto :goto_25

    .line 192
    .restart local v5       #xmlCursor:Landroid/content/XmlDocumentProvider$XMLCursor;
    :catch_81
    move-exception v0

    .line 193
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_82
    const-string v6, "XmlDocumentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while parsing XML "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_a1

    .line 195
    iget-object v6, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v6, :cond_7f

    .line 196
    iget-object v6, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    goto :goto_7c

    .line 195
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_a1
    move-exception v6

    iget-object v7, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_ab

    .line 196
    iget-object v7, p0, Landroid/content/XmlDocumentProvider;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 195
    :cond_ab
    throw v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
