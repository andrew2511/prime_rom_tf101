.class public Lcom/ecareme/utils/jdbc/ProxoolConnectionFactory;
.super Lcom/ecareme/utils/jdbc/ConnectionFactory;
.source "ProxoolConnectionFactory.java"


# instance fields
.field private alias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ecareme/utils/jdbc/ConnectionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure(Ljava/util/Properties;)V
    .locals 3
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    invoke-static {p1}, Lorg/logicalcobwebs/proxool/configuration/PropertyConfigurator;->configure(Ljava/util/Properties;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "proxool."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "jdbc.proxool.alias"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/utils/jdbc/ProxoolConnectionFactory;->alias:Ljava/lang/String;
    :try_end_0
    .catch Lorg/logicalcobwebs/proxool/ProxoolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 27
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 29
    .local v0, e:Lorg/logicalcobwebs/proxool/ProxoolException;
    new-instance v1, Ljava/sql/SQLException;

    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ecareme/utils/jdbc/ProxoolConnectionFactory;->alias:Ljava/lang/String;

    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method
