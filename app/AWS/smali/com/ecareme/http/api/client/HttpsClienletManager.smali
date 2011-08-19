.class public Lcom/ecareme/http/api/client/HttpsClienletManager;
.super Ljava/lang/Object;
.source "HttpsClienletManager.java"


# static fields
.field private static final clientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/http/api/client/HttpsClienlet;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/ecareme/http/api/client/HttpClienletManager;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/ecareme/http/api/client/HttpsClienletManager;->log:Lorg/apache/log4j/Logger;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/http/api/client/HttpsClienletManager;->clientMap:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptHttpsClienlet(Ljava/lang/String;)Lcom/ecareme/http/api/client/HttpsClienlet;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienletManager;->clientMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/http/api/client/HttpsClienlet;

    .line 34
    .local v0, c:Lcom/ecareme/http/api/client/HttpsClienlet;
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/ecareme/http/api/client/EncryptHttpsClienlet;

    .end local v0           #c:Lcom/ecareme/http/api/client/HttpsClienlet;
    invoke-direct {v0, p0}, Lcom/ecareme/http/api/client/EncryptHttpsClienlet;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v0       #c:Lcom/ecareme/http/api/client/HttpsClienlet;
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienletManager;->clientMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ecareme/http/api/client/HttpsClienlet;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienletManager;->log:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EncryptHttpClienlet connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ecareme/http/api/client/HttpsClienlet;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 40
    return-object v0
.end method

.method public static getHttpsClienlet(Ljava/lang/String;)Lcom/ecareme/http/api/client/HttpsClienlet;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 21
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienletManager;->clientMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/http/api/client/HttpsClienlet;

    .line 22
    .local v0, c:Lcom/ecareme/http/api/client/HttpsClienlet;
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/ecareme/http/api/client/HttpsClienlet;

    .end local v0           #c:Lcom/ecareme/http/api/client/HttpsClienlet;
    invoke-direct {v0, p0}, Lcom/ecareme/http/api/client/HttpsClienlet;-><init>(Ljava/lang/String;)V

    .line 25
    .restart local v0       #c:Lcom/ecareme/http/api/client/HttpsClienlet;
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienletManager;->clientMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ecareme/http/api/client/HttpsClienlet;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienletManager;->log:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpClienlet connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ecareme/http/api/client/HttpsClienlet;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 28
    return-object v0
.end method
