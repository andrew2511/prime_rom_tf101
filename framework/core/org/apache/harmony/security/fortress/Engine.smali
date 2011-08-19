.class public Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/Engine$1;,
        Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;,
        Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    }
.end annotation


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private volatile serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .registers 6
    .parameter "serviceName"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "algorithm"
    .parameter "provider"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_a

    .line 170
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "algorithm == null"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 173
    .local v0, service:Ljava/security/Provider$Service;
    if-nez v0, :cond_19

    .line 174
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v1

    throw v1

    .line 176
    :cond_19
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .registers 10
    .parameter "algorithm"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 134
    if-nez p1, :cond_b

    .line 135
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "Null algorithm name"

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_b
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    .line 139
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    .line 140
    .local v0, cacheEntry:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    if-eqz v0, :cond_36

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->algorithm:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$000(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/harmony/security/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    sget v3, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->refreshNumber:I
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$100(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I

    move-result v4

    if-eq v3, v4, :cond_36

    .line 143
    #getter for: Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->service:Ljava/security/Provider$Service;
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->access$200(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 159
    .local v2, service:Ljava/security/Provider$Service;
    :goto_28
    new-instance v3, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    invoke-virtual {v2, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$1;)V

    return-object v3

    .line 145
    .end local v2           #service:Ljava/security/Provider$Service;
    :cond_36
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 146
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    .line 148
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 154
    .restart local v2       #service:Ljava/security/Provider$Service;
    if-nez v2, :cond_6f

    .line 155
    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    .line 157
    :cond_6f
    new-instance v3, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    sget v4, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    invoke-direct {v3, p1, v4, v2, v6}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/security/Provider$Service;Lorg/apache/harmony/security/fortress/Engine$1;)V

    iput-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    goto :goto_28
.end method
