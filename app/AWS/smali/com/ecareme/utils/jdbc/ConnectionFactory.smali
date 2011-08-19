.class public abstract Lcom/ecareme/utils/jdbc/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.java"


# static fields
.field private static _instance:Lcom/ecareme/utils/jdbc/ConnectionFactory;

.field private static factorys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecareme/utils/jdbc/ConnectionFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/utils/jdbc/ConnectionFactory;->factorys:Ljava/util/Map;

    .line 14
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configurate(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .parameter "className"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/utils/jdbc/ConnectionFactory;

    .line 40
    .local v1, instance:Lcom/ecareme/utils/jdbc/ConnectionFactory;
    invoke-virtual {v1, p1}, Lcom/ecareme/utils/jdbc/ConnectionFactory;->configure(Ljava/util/Properties;)V

    .line 41
    sput-object v1, Lcom/ecareme/utils/jdbc/ConnectionFactory;->_instance:Lcom/ecareme/utils/jdbc/ConnectionFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 43
    .end local v1           #instance:Lcom/ecareme/utils/jdbc/ConnectionFactory;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 45
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/sql/SQLException;

    invoke-direct {v2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getFactory(Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    sget-object v0, Lcom/ecareme/utils/jdbc/ConnectionFactory;->factorys:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/utils/jdbc/ConnectionFactory;

    return-object p0
.end method

.method public static getInstance()Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/ecareme/utils/jdbc/ConnectionFactory;->_instance:Lcom/ecareme/utils/jdbc/ConnectionFactory;

    return-object v0
.end method

.method public static registerFactory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 3
    .parameter "name"
    .parameter "className"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/utils/jdbc/ConnectionFactory;

    .line 61
    .local v1, factory:Lcom/ecareme/utils/jdbc/ConnectionFactory;
    invoke-virtual {v1, p2}, Lcom/ecareme/utils/jdbc/ConnectionFactory;->configure(Ljava/util/Properties;)V

    .line 62
    sget-object v2, Lcom/ecareme/utils/jdbc/ConnectionFactory;->factorys:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object v1

    .line 65
    .end local v1           #factory:Lcom/ecareme/utils/jdbc/ConnectionFactory;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 67
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/sql/SQLException;

    invoke-direct {v2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static registerFactory(Ljava/lang/String;Lcom/ecareme/utils/jdbc/ConnectionFactory;)V
    .locals 1
    .parameter "name"
    .parameter "connfactory"

    .prologue
    .line 75
    sget-object v0, Lcom/ecareme/utils/jdbc/ConnectionFactory;->factorys:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method protected abstract configure(Ljava/util/Properties;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
