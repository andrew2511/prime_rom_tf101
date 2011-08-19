.class Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;
.super Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;
.source "BoxHTTPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doMultipartPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;


# direct methods
.method constructor <init>(Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;Ljava/io/File;Ljava/io/File;Lorg/apache/commons/httpclient/methods/PostMethod;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;->this$0:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    iput-object p3, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;->val$f:Ljava/io/File;

    iput-object p4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;->val$pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;

    .line 449
    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, instream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1$1;

    .end local v1           #instream:Ljava/io/FileInputStream;
    iget-object v2, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;->val$f:Ljava/io/File;

    iget-object v3, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;->val$pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v1, p0, v2, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1$1;-><init>(Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;Ljava/io/File;Lorg/apache/commons/httpclient/methods/PostMethod;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #instream:Ljava/io/FileInputStream;
    move-object v2, v1

    .line 479
    .end local v1           #instream:Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 476
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 478
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 479
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method
