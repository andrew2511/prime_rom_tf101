.class public Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;
.super Lcom/ecareme/utils/jdbc/ConnectionFactory;
.source "DBCPConnectionFactory.java"


# instance fields
.field private dataSource:Lorg/apache/commons/dbcp/BasicDataSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ecareme/utils/jdbc/ConnectionFactory;-><init>()V

    .line 16
    new-instance v0, Lorg/apache/commons/dbcp/BasicDataSource;

    invoke-direct {v0}, Lorg/apache/commons/dbcp/BasicDataSource;-><init>()V

    iput-object v0, p0, Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;->dataSource:Lorg/apache/commons/dbcp/BasicDataSource;

    .line 14
    return-void
.end method


# virtual methods
.method protected configure(Ljava/util/Properties;)V
    .locals 2
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;->dataSource:Lorg/apache/commons/dbcp/BasicDataSource;

    const-string v1, "jdbc.driver"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/dbcp/BasicDataSource;->setDriverClassName(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;->dataSource:Lorg/apache/commons/dbcp/BasicDataSource;

    const-string v1, "jdbc.username"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/dbcp/BasicDataSource;->setUsername(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;->dataSource:Lorg/apache/commons/dbcp/BasicDataSource;

    const-string v1, "jdbc.password"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/dbcp/BasicDataSource;->setPassword(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;->dataSource:Lorg/apache/commons/dbcp/BasicDataSource;

    const-string v1, "jdbc.url"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/dbcp/BasicDataSource;->setUrl(Ljava/lang/String;)V

    .line 24
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
    .line 28
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/DBCPConnectionFactory;->dataSource:Lorg/apache/commons/dbcp/BasicDataSource;

    invoke-virtual {v0}, Lorg/apache/commons/dbcp/BasicDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method
