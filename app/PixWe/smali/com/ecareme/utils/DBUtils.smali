.class public Lcom/ecareme/utils/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/sql/Connection;)V
    .locals 1
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    .line 72
    :cond_0
    return-void
.end method

.method public static close(Ljava/sql/Connection;Ljava/sql/Statement;)V
    .locals 0
    .parameter "conn"
    .parameter "stmt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Statement;)V

    .line 93
    invoke-static {p0}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Connection;)V

    .line 94
    return-void
.end method

.method public static close(Ljava/sql/Connection;Ljava/sql/Statement;Ljava/sql/ResultSet;)V
    .locals 0
    .parameter "conn"
    .parameter "stmt"
    .parameter "rset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p2}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/ResultSet;)V

    .line 105
    invoke-static {p1}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Statement;)V

    .line 106
    invoke-static {p0}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Connection;)V

    .line 107
    return-void
.end method

.method public static close(Ljava/sql/ResultSet;)V
    .locals 0
    .parameter "rset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V

    .line 88
    :cond_0
    return-void
.end method

.method public static close(Ljava/sql/Statement;)V
    .locals 0
    .parameter "stmt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    .line 80
    :cond_0
    return-void
.end method

.method public static close(Ljava/sql/Statement;Ljava/sql/ResultSet;)V
    .locals 0
    .parameter "stmt"
    .parameter "rset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/ResultSet;)V

    .line 99
    invoke-static {p0}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Statement;)V

    .line 100
    return-void
.end method

.method public static closeQuietly(Ljava/sql/Connection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 133
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 140
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/sql/Connection;Ljava/sql/Statement;)V
    .locals 0
    .parameter "conn"
    .parameter "stmt"

    .prologue
    .line 177
    invoke-static {p1}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/Statement;)V

    .line 178
    invoke-static {p0}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/Connection;)V

    .line 179
    return-void
.end method

.method public static closeQuietly(Ljava/sql/Connection;Ljava/sql/Statement;Ljava/sql/ResultSet;)V
    .locals 0
    .parameter "conn"
    .parameter "stmt"
    .parameter "rset"

    .prologue
    .line 189
    invoke-static {p2}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/ResultSet;)V

    .line 190
    invoke-static {p1}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/Statement;)V

    .line 191
    invoke-static {p0}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/Connection;)V

    .line 192
    return-void
.end method

.method public static closeQuietly(Ljava/sql/ResultSet;)V
    .locals 1
    .parameter "rset"

    .prologue
    .line 162
    if-eqz p0, :cond_0

    .line 166
    :try_start_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/sql/Statement;)V
    .locals 1
    .parameter "stmt"

    .prologue
    .line 147
    if-eqz p0, :cond_0

    .line 151
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/sql/Statement;Ljava/sql/ResultSet;)V
    .locals 0
    .parameter "stmt"
    .parameter "rset"

    .prologue
    .line 183
    invoke-static {p1}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/ResultSet;)V

    .line 184
    invoke-static {p0}, Lcom/ecareme/utils/DBUtils;->closeQuietly(Ljava/sql/Statement;)V

    .line 185
    return-void
.end method

.method public static getConnectionFromDriverManager(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .parameter "driverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionFromDriverManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 3
    .parameter "driverName"
    .parameter "driverUrl"
    .parameter "username"
    .parameter "passwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    invoke-static {p1, p2, p3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static rollback(Ljava/sql/Connection;)V
    .locals 1
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-interface {p0}, Ljava/sql/Connection;->rollback()V

    .line 64
    :cond_0
    return-void
.end method

.method public static rollbackQuietly(Ljava/sql/Connection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-interface {p0}, Ljava/sql/Connection;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static selectIdentity_Sqlserver(Ljava/sql/Connection;)Ljava/lang/Object;
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, stmt:Ljava/sql/PreparedStatement;
    const/4 v0, 0x0

    .line 41
    .local v0, rset:Ljava/sql/ResultSet;
    :try_start_0
    const-string v2, "select @@identity as newid"

    invoke-interface {p0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 54
    invoke-static {v1, v0}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Statement;Ljava/sql/ResultSet;)V

    .line 49
    :goto_0
    return-object v2

    .line 54
    :cond_0
    invoke-static {v1, v0}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Statement;Ljava/sql/ResultSet;)V

    .line 49
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    .line 54
    invoke-static {v1, v0}, Lcom/ecareme/utils/DBUtils;->close(Ljava/sql/Statement;Ljava/sql/ResultSet;)V

    .line 55
    throw v2
.end method
