.class Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1$1;
.super Ljava/io/FileInputStream;
.source "BoxHTTPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;->createInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;

.field private final synthetic val$pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;


# direct methods
.method constructor <init>(Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;Ljava/io/File;Lorg/apache/commons/httpclient/methods/PostMethod;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1$1;->this$1:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;

    iput-object p3, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1$1;->val$pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;

    .line 458
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    sget-boolean v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1$1;->val$pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->abort()V

    .line 470
    const/4 v0, -0x1

    .line 472
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method
