.class Ljava/net/URLClassLoader$URLHandler;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLHandler"
.end annotation


# instance fields
.field codeSourceUrl:Ljava/net/URL;

.field final synthetic this$0:Ljava/net/URLClassLoader;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .registers 3
    .parameter
    .parameter "url"

    .prologue
    .line 198
    iput-object p1, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    .line 200
    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    .line 201
    return-void
.end method


# virtual methods
.method createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 16
    .parameter "is"
    .parameter "packageName"
    .parameter "origName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p1, :cond_5

    move-object v0, v2

    .line 247
    :goto_4
    return-object v0

    .line 227
    :cond_5
    const/4 v9, 0x0

    .line 229
    .local v9, clBuf:[B
    :try_start_6
    #calls: Ljava/net/URLClassLoader;->getBytes(Ljava/io/InputStream;)[B
    invoke-static {p1}, Ljava/net/URLClassLoader;->access$000(Ljava/io/InputStream;)[B
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_45
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_3f

    move-result-object v9

    .line 233
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 235
    if-eqz p2, :cond_2a

    .line 236
    const/16 v0, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, packageDotName:Ljava/lang/String;
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    #calls: Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    invoke-static {v0, v1}, Ljava/net/URLClassLoader;->access$100(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v11

    .line 238
    .local v11, packageObj:Ljava/lang/Package;
    if-nez v11, :cond_4a

    .line 239
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    #calls: Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    invoke-static/range {v0 .. v8}, Ljava/net/URLClassLoader;->access$200(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 247
    .end local v1           #packageDotName:Ljava/lang/String;
    .end local v11           #packageObj:Ljava/lang/Package;
    :cond_2a
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v5, 0x0

    array-length v6, v9

    new-instance v7, Ljava/security/CodeSource;

    iget-object v3, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    check-cast v2, [Ljava/security/cert/Certificate;

    invoke-direct {v7, v3, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    move-object v2, v0

    move-object v3, p3

    move-object v4, v9

    #calls: Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    invoke-static/range {v2 .. v7}, Ljava/net/URLClassLoader;->access$300(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 230
    :catch_3f
    move-exception v10

    .line 233
    .local v10, e:Ljava/io/IOException;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_4

    .end local v10           #e:Ljava/io/IOException;
    :catchall_45
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 242
    .restart local v1       #packageDotName:Ljava/lang/String;
    .restart local v11       #packageObj:Ljava/lang/Package;
    :cond_4a
    invoke-virtual {v11}, Ljava/lang/Package;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 243
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Package is sealed"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .parameter "packageName"
    .parameter "name"
    .parameter "origName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v2, p2}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 212
    .local v1, resURL:Ljava/net/URL;
    if-eqz v1, :cond_12

    .line 214
    :try_start_8
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 215
    .local v0, is:Ljava/io/InputStream;
    invoke-virtual {p0, v0, p1, p3}, Ljava/net/URLClassLoader$URLHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v2

    .line 219
    .end local v0           #is:Ljava/io/InputStream;
    :goto_10
    return-object v2

    .line 216
    :catch_11
    move-exception v2

    .line 219
    :cond_12
    const/4 v2, 0x0

    goto :goto_10
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 251
    iget-object v4, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v4, p1}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 252
    .local v2, resURL:Ljava/net/URL;
    if-eqz v2, :cond_3a

    .line 254
    :try_start_9
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 255
    .local v3, uc:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 258
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object v4, v2

    .line 272
    .end local v3           #uc:Ljava/net/URLConnection;
    :goto_21
    return-object v4

    .line 262
    .restart local v3       #uc:Ljava/net/URLConnection;
    :cond_22
    check-cast v3, Ljava/net/HttpURLConnection;

    .end local v3           #uc:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_27} :catch_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_27} :catch_36

    move-result v0

    .local v0, code:I
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_3a

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_3a

    move-object v4, v2

    .line 264
    goto :goto_21

    .line 266
    .end local v0           #code:I
    :catch_32
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/SecurityException;
    move-object v4, v6

    .line 267
    goto :goto_21

    .line 268
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_36
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    move-object v4, v6

    .line 269
    goto :goto_21

    .end local v1           #e:Ljava/io/IOException;
    :cond_3a
    move-object v4, v6

    .line 272
    goto :goto_21
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, resources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 205
    .local v0, res:Ljava/net/URL;
    if-eqz v0, :cond_f

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 206
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_f
    return-void
.end method

.method targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 11
    .parameter "base"
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    .line 277
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->quoteIllegal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, file:Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_2e} :catch_2f
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_2e} :catch_33

    .line 285
    .end local v4           #file:Ljava/lang/String;
    :goto_2e
    return-object v0

    .line 282
    :catch_2f
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/io/UnsupportedEncodingException;
    move-object v0, v7

    .line 283
    goto :goto_2e

    .line 284
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_33
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/net/MalformedURLException;
    move-object v0, v7

    .line 285
    goto :goto_2e
.end method
