.class public Lcom/ecareme/utils/cache/CacheRepositoryManager;
.super Ljava/lang/Object;
.source "CacheRepositoryManager.java"


# static fields
.field private static final log:Lorg/apache/log4j/Logger;

.field private static repos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/utils/cache/CacheRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/ecareme/utils/cache/CacheRepositoryManager;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/ecareme/utils/cache/CacheRepositoryManager;->log:Lorg/apache/log4j/Logger;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/utils/cache/CacheRepositoryManager;->repos:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanupAllCache()V
    .locals 3

    .prologue
    .line 37
    sget-object v1, Lcom/ecareme/utils/cache/CacheRepositoryManager;->repos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    return-void

    .line 37
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/utils/cache/CacheRepository;

    .line 39
    .local v0, repo:Lcom/ecareme/utils/cache/CacheRepository;
    invoke-virtual {v0}, Lcom/ecareme/utils/cache/CacheRepository;->cleanup()V

    goto :goto_0
.end method

.method public static configRepository(Lorg/apache/commons/configuration/XMLConfiguration;)V
    .locals 7
    .parameter "conf"

    .prologue
    .line 68
    new-instance v0, Lorg/apache/commons/configuration/XMLConfiguration;

    invoke-direct {v0, p0}, Lorg/apache/commons/configuration/XMLConfiguration;-><init>(Lorg/apache/commons/configuration/HierarchicalConfiguration;)V

    .line 69
    .local v0, confcopy:Lorg/apache/commons/configuration/XMLConfiguration;
    new-instance v5, Lorg/apache/commons/configuration/tree/xpath/XPathExpressionEngine;

    invoke-direct {v5}, Lorg/apache/commons/configuration/tree/xpath/XPathExpressionEngine;-><init>()V

    invoke-virtual {v0, v5}, Lorg/apache/commons/configuration/XMLConfiguration;->setExpressionEngine(Lorg/apache/commons/configuration/tree/ExpressionEngine;)V

    .line 70
    const-string v5, "cache/repository"

    invoke-virtual {v0, v5}, Lorg/apache/commons/configuration/XMLConfiguration;->configurationsAt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    return-void

    .line 73
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/configuration/Configuration;

    .line 74
    .local v4, subconf:Lorg/apache/commons/configuration/Configuration;
    const-string v5, "properties"

    invoke-interface {v4, v5}, Lorg/apache/commons/configuration/Configuration;->subset(Ljava/lang/String;)Lorg/apache/commons/configuration/Configuration;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/configuration/ConfigurationConverter;->getProperties(Lorg/apache/commons/configuration/Configuration;)Ljava/util/Properties;

    move-result-object v3

    .line 75
    .local v3, props:Ljava/util/Properties;
    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/apache/commons/configuration/Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "class"

    invoke-interface {v4, v6}, Lorg/apache/commons/configuration/Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/ecareme/utils/cache/CacheRepositoryManager;->registerRepository(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_0
.end method

.method public static getRepository(Ljava/lang/String;)Lcom/ecareme/utils/cache/CacheRepository;
    .locals 4
    .parameter "name"

    .prologue
    .line 27
    sget-object v1, Lcom/ecareme/utils/cache/CacheRepositoryManager;->repos:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/utils/cache/CacheRepository;

    .line 28
    .local v0, repo:Lcom/ecareme/utils/cache/CacheRepository;
    if-nez v0, :cond_0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "repository not found for name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_0
    return-object v0
.end method

.method public static registerRepository(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 7
    .parameter "name"
    .parameter "reposClass"
    .parameter "props"

    .prologue
    .line 81
    sget-object v4, Lcom/ecareme/utils/cache/CacheRepositoryManager;->repos:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/utils/cache/CacheRepository;

    .line 82
    .local v3, repo:Lcom/ecareme/utils/cache/CacheRepository;
    if-nez v3, :cond_1

    .line 86
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/ecareme/utils/cache/CacheRepository;

    move-object v3, v0

    .line 87
    invoke-virtual {v3, p2}, Lcom/ecareme/utils/cache/CacheRepository;->initialize(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    sget-object v4, Lcom/ecareme/utils/cache/CacheRepositoryManager;->repos:Ljava/util/Map;

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v4, Lcom/ecareme/utils/cache/CacheRepositoryManager;->log:Lorg/apache/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "registered cache repository name:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " props:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void

    .line 89
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 91
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot create cache repository for class:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 98
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, classname:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " repository with class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already registered."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
