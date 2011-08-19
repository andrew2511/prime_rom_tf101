.class public Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;
.super Lcom/ecareme/utils/jdbc/ConnectionFactory;
.source "DataSourceConnectionFactory.java"


# static fields
.field public static final KEY_DATASOURCE:Ljava/lang/String; = "jndi.name.datasource"


# instance fields
.field private ds:Ljavax/sql/DataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ecareme/utils/jdbc/ConnectionFactory;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1

    .prologue
    .line 25
    const-string v0, "jndi.name.datasource"

    invoke-static {v0}, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;->getFactory(Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getFactory(Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/ecareme/utils/jdbc/ConnectionFactory;->getFactory(Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public static registerDataSourceFactory(Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1
    .parameter "jdniname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "jndi.name.datasource"

    invoke-static {v0, p0}, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;->registerDataSourceFactory(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public static registerDataSourceFactory(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 3
    .parameter "factoryname"
    .parameter "jdniname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 41
    .local v0, props:Ljava/util/Properties;
    const-string v1, "jndi.name.datasource"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    const-string v1, "jndi.name.datasource"

    const-class v2, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ecareme/utils/jdbc/ConnectionFactory;->registerFactory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lcom/ecareme/utils/jdbc/ConnectionFactory;

    move-result-object v1

    return-object v1
.end method

.method public static registerDataSourceFactory(Ljava/lang/String;Ljavax/sql/DataSource;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1
    .parameter "name"
    .parameter "datasource"

    .prologue
    .line 52
    new-instance v0, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;

    invoke-direct {v0}, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;-><init>()V

    .line 53
    .local v0, connfactory:Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;
    iput-object p1, v0, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;->ds:Ljavax/sql/DataSource;

    .line 54
    invoke-static {p0, v0}, Lcom/ecareme/utils/jdbc/ConnectionFactory;->registerFactory(Ljava/lang/String;Lcom/ecareme/utils/jdbc/ConnectionFactory;)V

    .line 55
    return-object v0
.end method

.method public static registerDataSourceFactory(Ljavax/sql/DataSource;)Lcom/ecareme/utils/jdbc/ConnectionFactory;
    .locals 1
    .parameter "datasource"

    .prologue
    .line 47
    const-string v0, "jndi.name.datasource"

    invoke-static {v0, p0}, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;->registerDataSourceFactory(Ljava/lang/String;Ljavax/sql/DataSource;)Lcom/ecareme/utils/jdbc/ConnectionFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected configure(Ljava/util/Properties;)V
    .locals 5
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0, p1}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    .line 65
    .local v0, ctx:Ljavax/naming/InitialContext;
    const-string v3, "jndi.name.datasource"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 68
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "jndi.name.datasource MUST provide to lookup DataSource."

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #ctx:Ljavax/naming/InitialContext;
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 74
    .local v1, e:Ljavax/naming/NamingException;
    new-instance v3, Ljava/sql/SQLException;

    invoke-direct {v3, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 70
    .end local v1           #e:Ljavax/naming/NamingException;
    .restart local v0       #ctx:Ljavax/naming/InitialContext;
    .restart local v2       #name:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sql/DataSource;

    iput-object v3, p0, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;->ds:Ljavax/sql/DataSource;
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/DataSourceConnectionFactory;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method
