.class public LSQLite/JDBC2z/JDBCStatement;
.super Ljava/lang/Object;
.source "JDBCStatement.java"

# interfaces
.implements Ljava/sql/Statement;


# instance fields
.field private batch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected conn:LSQLite/JDBC2z/JDBCConnection;

.field protected maxrows:I

.field protected rs:LSQLite/JDBC2z/JDBCResultSet;

.field protected updcnt:I


# direct methods
.method public constructor <init>(LSQLite/JDBC2z/JDBCConnection;)V
    .registers 4
    .parameter "conn"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, LSQLite/JDBC2z/JDBCStatement;->maxrows:I

    .line 15
    iput-object p1, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    .line 16
    iput v0, p0, LSQLite/JDBC2z/JDBCStatement;->updcnt:I

    .line 17
    iput-object v1, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    .line 18
    iput-object v1, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    .line 180
    :cond_c
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    if-eqz v0, :cond_a

    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-nez v0, :cond_12

    .line 164
    :cond_a
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "stale connection"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_12
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v0}, LSQLite/JDBC2z/DatabaseX;->interrupt()V

    .line 167
    return-void
.end method

.method public clearBatch()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 208
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    .line 211
    :cond_c
    return-void
.end method

.method public clearWarnings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCStatement;->clearBatch()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    .line 216
    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .registers 3
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public execute(Ljava/lang/String;I)Z
    .registers 5
    .parameter "sql"
    .parameter "autokeys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 284
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "autogenerated keys not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_b
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCStatement;->execute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .registers 4
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public executeBatch()[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v4, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 185
    const/4 v4, 0x0

    new-array v4, v4, [I

    .line 203
    :goto_7
    return-object v4

    .line 187
    :cond_8
    iget-object v4, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 188
    .local v3, ret:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 189
    const/4 v4, -0x3

    aput v4, v3, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 191
    :cond_1a
    const/4 v1, 0x0

    .line 192
    .local v1, errs:I
    const/4 v2, 0x0

    :goto_1c
    array-length v4, v3

    if-ge v2, v4, :cond_36

    .line 194
    :try_start_1f
    iget-object v4, p0, LSQLite/JDBC2z/JDBCStatement;->batch:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, LSQLite/JDBC2z/JDBCStatement;->execute(Ljava/lang/String;)Z

    .line 195
    iget v4, p0, LSQLite/JDBC2z/JDBCStatement;->updcnt:I

    aput v4, v3, v2
    :try_end_2e
    .catch Ljava/sql/SQLException; {:try_start_1f .. :try_end_2e} :catch_31

    .line 192
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 196
    :catch_31
    move-exception v4

    move-object v0, v4

    .line 197
    .local v0, e:Ljava/sql/SQLException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 200
    .end local v0           #e:Ljava/sql/SQLException;
    :cond_36
    if-lez v1, :cond_40

    .line 201
    new-instance v4, Ljava/sql/BatchUpdateException;

    const-string v5, "batch failed"

    invoke-direct {v4, v5, v3}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;[I)V

    throw v4

    :cond_40
    move-object v4, v3

    .line 203
    goto :goto_7
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;
    .registers 13
    .parameter "sql"
    .parameter "args"
    .parameter "updonly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, tr:LSQLite/TableResult;
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v5, :cond_f

    .line 89
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    invoke-virtual {v5}, LSQLite/JDBC2z/JDBCResultSet;->close()V

    .line 90
    iput-object v6, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    .line 92
    :cond_f
    const/4 v5, -0x1

    iput v5, p0, LSQLite/JDBC2z/JDBCStatement;->updcnt:I

    .line 93
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    if-eqz v5, :cond_1c

    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-nez v5, :cond_24

    .line 94
    :cond_1c
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "stale connection"

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_24
    const/4 v0, 0x0

    .line 97
    .local v0, busy:I
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-boolean v5, v5, LSQLite/JDBC2z/JDBCConnection;->autocommit:Z

    if-nez v5, :cond_66

    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-boolean v5, v5, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    if-nez v5, :cond_66

    move v3, v8

    .line 100
    .local v3, starttrans:Z
    :goto_32
    if-eqz v3, :cond_43

    .line 101
    :try_start_34
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v6, "BEGIN TRANSACTION"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 102
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    const/4 v6, 0x1

    iput-boolean v6, v5, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    .line 104
    :cond_43
    if-nez p2, :cond_73

    .line 105
    if-eqz p3, :cond_68

    .line 106
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 117
    :goto_4f
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v5}, LSQLite/JDBC2z/DatabaseX;->changes()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, LSQLite/JDBC2z/JDBCStatement;->updcnt:I
    :try_end_5a
    .catch LSQLite/Exception; {:try_start_34 .. :try_end_5a} :catch_7e

    .line 145
    if-nez p3, :cond_e8

    if-nez v4, :cond_e8

    .line 146
    new-instance v5, Ljava/sql/SQLException;

    const-string v6, "no result set produced"

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #starttrans:Z
    :cond_66
    move v3, v7

    .line 97
    goto :goto_32

    .line 108
    .restart local v3       #starttrans:Z
    :cond_68
    :try_start_68
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    iget v6, p0, LSQLite/JDBC2z/JDBCStatement;->maxrows:I

    invoke-virtual {v5, p1, v6}, LSQLite/JDBC2z/DatabaseX;->get_table(Ljava/lang/String;I)LSQLite/TableResult;

    move-result-object v4

    goto :goto_4f

    .line 111
    :cond_73
    if-eqz p3, :cond_d2

    .line 112
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_7d
    .catch LSQLite/Exception; {:try_start_68 .. :try_end_7d} :catch_7e

    goto :goto_4f

    .line 118
    :catch_7e
    move-exception v5

    move-object v1, v5

    .line 119
    .local v1, e:LSQLite/Exception;
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v5}, LSQLite/JDBC2z/DatabaseX;->is3()Z

    move-result v5

    if-eqz v5, :cond_de

    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v5}, LSQLite/JDBC2z/DatabaseX;->last_error()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_de

    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v6, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v6, v6, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v6, v0}, LSQLite/JDBC2z/JDBCConnection;->busy3(LSQLite/JDBC2z/DatabaseX;I)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 123
    if-eqz v3, :cond_ba

    :try_start_a5
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-boolean v5, v5, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    if-eqz v5, :cond_ba

    .line 124
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v6, "ROLLBACK"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 125
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    const/4 v6, 0x0

    iput-boolean v6, v5, LSQLite/JDBC2z/JDBCConnection;->intrans:Z
    :try_end_ba
    .catch LSQLite/Exception; {:try_start_a5 .. :try_end_ba} :catch_fb

    .line 130
    :cond_ba
    :goto_ba
    mul-int/lit8 v5, v0, 0xa

    add-int/lit8 v2, v5, 0x14

    .line 131
    .local v2, ms:I
    const/16 v5, 0x3e8

    if-le v2, v5, :cond_c4

    .line 132
    const/16 v2, 0x3e8

    .line 134
    :cond_c4
    :try_start_c4
    monitor-enter p0
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_cf

    .line 135
    int-to-long v5, v2

    :try_start_c6
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 136
    monitor-exit p0

    goto/16 :goto_32

    :catchall_cc
    move-exception v5

    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v5
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_cf} :catch_cf

    .line 137
    :catch_cf
    move-exception v5

    goto/16 :goto_32

    .line 114
    .end local v1           #e:LSQLite/Exception;
    .end local v2           #ms:I
    :cond_d2
    :try_start_d2
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v5, v5, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    iget v6, p0, LSQLite/JDBC2z/JDBCStatement;->maxrows:I

    invoke-virtual {v5, p1, v6, p2}, LSQLite/JDBC2z/DatabaseX;->get_table(Ljava/lang/String;I[Ljava/lang/String;)LSQLite/TableResult;
    :try_end_db
    .catch LSQLite/Exception; {:try_start_d2 .. :try_end_db} :catch_7e

    move-result-object v4

    goto/16 :goto_4f

    .line 141
    .restart local v1       #e:LSQLite/Exception;
    :cond_de
    new-instance v5, Ljava/sql/SQLException;

    invoke-virtual {v1}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    .end local v1           #e:LSQLite/Exception;
    :cond_e8
    if-nez p3, :cond_f8

    if-eqz v4, :cond_f8

    .line 149
    new-instance v5, LSQLite/JDBC2z/JDBCResultSet;

    new-instance v6, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v6, v4}, LSQLite/JDBC2z/TableResultX;-><init>(LSQLite/TableResult;)V

    invoke-direct {v5, v6, p0}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    iput-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    .line 151
    :cond_f8
    iget-object v5, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    return-object v5

    .line 127
    .restart local v1       #e:LSQLite/Exception;
    :catch_fb
    move-exception v5

    goto :goto_ba
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 220
    iget v0, p0, LSQLite/JDBC2z/JDBCStatement;->updcnt:I

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .registers 5
    .parameter "sql"
    .parameter "autokeys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 266
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "generated keys not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_b
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCStatement;->executeUpdate(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .registers 4
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    return-object v0
.end method

.method public getFetchDirection()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    const/16 v0, 0x3ea

    return v0
.end method

.method public getFetchSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getMaxFieldSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 32
    iget v0, p0, LSQLite/JDBC2z/JDBCStatement;->maxrows:I

    return v0
.end method

.method public getMoreResults()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    invoke-virtual {v0}, LSQLite/JDBC2z/JDBCResultSet;->close()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    .line 232
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults(I)Z
    .registers 3
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getQueryTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget v0, v0, LSQLite/JDBC2z/JDBCConnection;->timeout:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->rs:LSQLite/JDBC2z/JDBCResultSet;

    return-object v0
.end method

.method public getResultSetConcurrency()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v0, 0x3ef

    return v0
.end method

.method public getResultSetHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public getResultSetType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    const/16 v0, 0x3ec

    return v0
.end method

.method public getUpdateCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, LSQLite/JDBC2z/JDBCStatement;->updcnt:I

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPoolable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .registers 3
    .parameter "iface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public setEscapeProcessing(Z)V
    .registers 4
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFetchDirection(I)V
    .registers 4
    .parameter "fetchDirection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFetchSize(I)V
    .registers 4
    .parameter "fetchSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 23
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "fetch size not 1"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_b
    return-void
.end method

.method public setMaxFieldSize(I)V
    .registers 4
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxRows(I)V
    .registers 5
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    if-gez p1, :cond_21

    .line 37
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max must be >= 0 (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_21
    iput p1, p0, LSQLite/JDBC2z/JDBCStatement;->maxrows:I

    .line 40
    return-void
.end method

.method public setPoolable(Z)V
    .registers 4
    .parameter "yes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 308
    if-eqz p1, :cond_a

    .line 309
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "poolable statements not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_a
    return-void
.end method

.method public setQueryTimeout(I)V
    .registers 4
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCStatement;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "can\'t set a query timeout on a closed statement"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_e
    if-gez p1, :cond_18

    .line 66
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "can\'t set a query timeout of less than 0 seconds"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_18
    if-nez p1, :cond_21

    .line 70
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    const/16 v1, 0x1388

    iput v1, v0, LSQLite/JDBC2z/JDBCConnection;->timeout:I

    .line 75
    :goto_20
    return-void

    .line 72
    :cond_21
    iget-object v0, p0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    mul-int/lit16 v1, p1, 0x3e8

    iput v1, v0, LSQLite/JDBC2z/JDBCConnection;->timeout:I

    goto :goto_20
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 318
    .local p1, iface:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
