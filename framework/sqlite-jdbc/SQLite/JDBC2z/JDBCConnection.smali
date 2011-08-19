.class public LSQLite/JDBC2z/JDBCConnection;
.super Ljava/lang/Object;
.source "JDBCConnection.java"

# interfaces
.implements Ljava/sql/Connection;
.implements LSQLite/BusyHandler;


# instance fields
.field protected autocommit:Z

.field protected db:LSQLite/JDBC2z/DatabaseX;

.field private dbfile:Ljava/lang/String;

.field protected enc:Ljava/lang/String;

.field protected intrans:Z

.field private meta:LSQLite/JDBC2z/JDBCDatabaseMetaData;

.field private readonly:Z

.field private t0:J

.field protected timeout:I

.field private trmode:I

.field protected url:Ljava/lang/String;

.field protected useJulian:Z

.field protected vfs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "url"
    .parameter "enc"
    .parameter "pwd"
    .parameter "drep"
    .parameter "vfs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v4, p0, LSQLite/JDBC2z/JDBCConnection;->autocommit:Z

    .line 38
    iput-boolean v3, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    .line 43
    const v2, 0xf4240

    iput v2, p0, LSQLite/JDBC2z/JDBCConnection;->timeout:I

    .line 48
    iput-boolean v3, p0, LSQLite/JDBC2z/JDBCConnection;->useJulian:Z

    .line 53
    iput-object v6, p0, LSQLite/JDBC2z/JDBCConnection;->dbfile:Ljava/lang/String;

    .line 58
    iput-object v6, p0, LSQLite/JDBC2z/JDBCConnection;->meta:LSQLite/JDBC2z/JDBCDatabaseMetaData;

    .line 68
    iput-boolean v3, p0, LSQLite/JDBC2z/JDBCConnection;->readonly:Z

    .line 73
    iput v5, p0, LSQLite/JDBC2z/JDBCConnection;->trmode:I

    .line 147
    const-string v2, "sqlite:/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 148
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->dbfile:Ljava/lang/String;

    .line 154
    :goto_29
    iput-object p1, p0, LSQLite/JDBC2z/JDBCConnection;->url:Ljava/lang/String;

    .line 155
    iput-object p2, p0, LSQLite/JDBC2z/JDBCConnection;->enc:Ljava/lang/String;

    .line 156
    iput-object p5, p0, LSQLite/JDBC2z/JDBCConnection;->vfs:Ljava/lang/String;

    .line 158
    :try_start_2f
    iget-boolean v2, p0, LSQLite/JDBC2z/JDBCConnection;->readonly:Z

    invoke-direct {p0, v2}, LSQLite/JDBC2z/JDBCConnection;->open(Z)LSQLite/JDBC2z/DatabaseX;

    move-result-object v2

    iput-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;
    :try_end_37
    .catch Ljava/sql/SQLException; {:try_start_2f .. :try_end_37} :catch_82

    .line 160
    if-eqz p3, :cond_44

    :try_start_39
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_44

    .line 161
    iget-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v2, p3}, LSQLite/JDBC2z/DatabaseX;->key(Ljava/lang/String;)V
    :try_end_44
    .catch LSQLite/Exception; {:try_start_39 .. :try_end_44} :catch_78
    .catch Ljava/sql/SQLException; {:try_start_39 .. :try_end_44} :catch_82

    .line 166
    :cond_44
    :try_start_44
    iget-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v2, p0}, LSQLite/JDBC2z/DatabaseX;->busy_handler(LSQLite/BusyHandler;)V
    :try_end_49
    .catch Ljava/sql/SQLException; {:try_start_44 .. :try_end_49} :catch_82

    .line 176
    if-eqz p4, :cond_8e

    const-string v2, "j"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "J"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_5b
    move v2, v4

    :goto_5c
    iput-boolean v2, p0, LSQLite/JDBC2z/JDBCConnection;->useJulian:Z

    .line 178
    return-void

    .line 149
    :cond_5f
    const-string v2, "jdbc:sqlite:/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 150
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->dbfile:Ljava/lang/String;

    goto :goto_29

    .line 152
    :cond_70
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "unsupported url"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :catch_78
    move-exception v2

    move-object v1, v2

    .line 164
    .local v1, se:LSQLite/Exception;
    :try_start_7a
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "error while setting key"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_82
    .catch Ljava/sql/SQLException; {:try_start_7a .. :try_end_82} :catch_82

    .line 167
    .end local v1           #se:LSQLite/Exception;
    :catch_82
    move-exception v2

    move-object v0, v2

    .line 168
    .local v0, e:Ljava/sql/SQLException;
    iget-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-eqz v2, :cond_8d

    .line 170
    :try_start_88
    iget-object v2, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v2}, LSQLite/JDBC2z/DatabaseX;->close()V
    :try_end_8d
    .catch LSQLite/Exception; {:try_start_88 .. :try_end_8d} :catch_90

    .line 174
    :cond_8d
    :goto_8d
    throw v0

    .end local v0           #e:Ljava/sql/SQLException;
    :cond_8e
    move v2, v3

    .line 176
    goto :goto_5c

    .line 171
    .restart local v0       #e:Ljava/sql/SQLException;
    :catch_90
    move-exception v2

    goto :goto_8d
.end method

.method private busy0(LSQLite/JDBC2z/DatabaseX;I)Z
    .registers 11
    .parameter "db"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    if-gt p2, v7, :cond_a

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LSQLite/JDBC2z/JDBCConnection;->t0:J

    .line 79
    :cond_a
    if-eqz p1, :cond_24

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, t1:J
    iget-wide v2, p0, LSQLite/JDBC2z/JDBCConnection;->t0:J

    sub-long v2, v0, v2

    iget v4, p0, LSQLite/JDBC2z/JDBCConnection;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    move v2, v6

    .line 87
    .end local v0           #t1:J
    :goto_1c
    return v2

    .line 84
    .restart local v0       #t1:J
    :cond_1d
    const/16 v2, 0x64

    invoke-virtual {p1, v2}, LSQLite/JDBC2z/DatabaseX;->wait(I)V

    move v2, v7

    .line 85
    goto :goto_1c

    .end local v0           #t1:J
    :cond_24
    move v2, v6

    .line 87
    goto :goto_1c
.end method

.method private open(Z)LSQLite/JDBC2z/DatabaseX;
    .registers 9
    .parameter "readonly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, dbx:LSQLite/JDBC2z/DatabaseX;
    :try_start_1
    new-instance v1, LSQLite/JDBC2z/DatabaseX;

    invoke-direct {v1}, LSQLite/JDBC2z/DatabaseX;-><init>()V
    :try_end_6
    .catch LSQLite/Exception; {:try_start_1 .. :try_end_6} :catch_3d

    .line 112
    .end local v0           #dbx:LSQLite/JDBC2z/DatabaseX;
    .local v1, dbx:LSQLite/JDBC2z/DatabaseX;
    :try_start_6
    iget-object v4, p0, LSQLite/JDBC2z/JDBCConnection;->dbfile:Ljava/lang/String;

    if-eqz p1, :cond_3b

    const/4 v5, 0x1

    :goto_b
    iget-object v6, p0, LSQLite/JDBC2z/JDBCConnection;->vfs:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, LSQLite/JDBC2z/DatabaseX;->open(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    iget-object v4, p0, LSQLite/JDBC2z/JDBCConnection;->enc:Ljava/lang/String;

    invoke-virtual {v1, v4}, LSQLite/JDBC2z/DatabaseX;->set_encoding(Ljava/lang/String;)V
    :try_end_15
    .catch LSQLite/Exception; {:try_start_6 .. :try_end_15} :catch_69

    .line 119
    const/4 v3, 0x0

    .line 122
    .local v3, loop:I
    :cond_16
    :try_start_16
    const-string v4, "PRAGMA short_column_names = off;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 123
    const-string v4, "PRAGMA full_column_names = on;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 124
    const-string v4, "PRAGMA empty_result_callbacks = on;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 125
    invoke-static {}, LSQLite/Database;->version()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.6.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3a

    .line 126
    const-string v4, "PRAGMA show_datatypes = on;"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_3a
    .catch LSQLite/Exception; {:try_start_16 .. :try_end_3a} :catch_49

    .line 141
    :cond_3a
    return-object v1

    .line 112
    .end local v3           #loop:I
    :cond_3b
    const/4 v5, 0x6

    goto :goto_b

    .line 116
    .end local v1           #dbx:LSQLite/JDBC2z/DatabaseX;
    .restart local v0       #dbx:LSQLite/JDBC2z/DatabaseX;
    :catch_3d
    move-exception v4

    move-object v2, v4

    .line 117
    .local v2, e:LSQLite/Exception;
    :goto_3f
    new-instance v4, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    .end local v0           #dbx:LSQLite/JDBC2z/DatabaseX;
    .end local v2           #e:LSQLite/Exception;
    .restart local v1       #dbx:LSQLite/JDBC2z/DatabaseX;
    .restart local v3       #loop:I
    :catch_49
    move-exception v4

    move-object v2, v4

    .line 129
    .restart local v2       #e:LSQLite/Exception;
    invoke-virtual {v1}, LSQLite/JDBC2z/DatabaseX;->last_error()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5a

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v3}, LSQLite/JDBC2z/JDBCConnection;->busy0(LSQLite/JDBC2z/DatabaseX;I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 132
    :cond_5a
    :try_start_5a
    invoke-virtual {v1}, LSQLite/JDBC2z/DatabaseX;->close()V
    :try_end_5d
    .catch LSQLite/Exception; {:try_start_5a .. :try_end_5d} :catch_67

    .line 135
    :goto_5d
    new-instance v4, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :catch_67
    move-exception v4

    goto :goto_5d

    .line 116
    .end local v2           #e:LSQLite/Exception;
    .end local v3           #loop:I
    :catch_69
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #dbx:LSQLite/JDBC2z/DatabaseX;
    .restart local v0       #dbx:LSQLite/JDBC2z/DatabaseX;
    goto :goto_3f
.end method


# virtual methods
.method public busy(Ljava/lang/String;I)Z
    .registers 4
    .parameter "table"
    .parameter "count"

    .prologue
    .line 91
    iget-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-direct {p0, v0, p2}, LSQLite/JDBC2z/JDBCConnection;->busy0(LSQLite/JDBC2z/DatabaseX;I)Z

    move-result v0

    return v0
.end method

.method protected busy3(LSQLite/JDBC2z/DatabaseX;I)Z
    .registers 11
    .parameter "db"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    if-gt p2, v7, :cond_a

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LSQLite/JDBC2z/JDBCConnection;->t0:J

    .line 98
    :cond_a
    if-eqz p1, :cond_1f

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    .local v0, t1:J
    iget-wide v2, p0, LSQLite/JDBC2z/JDBCConnection;->t0:J

    sub-long v2, v0, v2

    iget v4, p0, LSQLite/JDBC2z/JDBCConnection;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    move v2, v6

    .line 105
    .end local v0           #t1:J
    :goto_1c
    return v2

    .restart local v0       #t1:J
    :cond_1d
    move v2, v7

    .line 103
    goto :goto_1c

    .end local v0           #t1:J
    :cond_1f
    move v2, v6

    .line 105
    goto :goto_1c
.end method

.method public clearWarnings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCConnection;->rollback()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_3} :catch_1f

    .line 219
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    .line 220
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-eqz v1, :cond_12

    .line 222
    :try_start_a
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v1}, LSQLite/JDBC2z/DatabaseX;->close()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;
    :try_end_12
    .catch LSQLite/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 228
    :cond_12
    return-void

    .line 224
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v0           #e:LSQLite/Exception;
    :catch_1f
    move-exception v1

    goto :goto_3
.end method

.method public commit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-nez v1, :cond_c

    .line 243
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "stale connection"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_c
    iget-boolean v1, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    if-nez v1, :cond_11

    .line 254
    :goto_10
    return-void

    .line 249
    :cond_11
    :try_start_11
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v2, "COMMIT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z
    :try_end_1c
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 251
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .registers 4
    .parameter "type"
    .parameter "elems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createClob()Ljava/sql/Clob;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .registers 2

    .prologue
    .line 186
    new-instance v0, LSQLite/JDBC2z/JDBCStatement;

    invoke-direct {v0, p0}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 187
    .local v0, s:LSQLite/JDBC2z/JDBCStatement;
    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .registers 6
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_14

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_14

    const/16 v1, 0x3ed

    if-eq p1, v1, :cond_14

    .line 196
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "unsupported result set type"

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_14
    const/16 v1, 0x3ef

    if-eq p2, v1, :cond_24

    const/16 v1, 0x3f0

    if-eq p2, v1, :cond_24

    .line 200
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "unsupported result set concurrency"

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_24
    new-instance v0, LSQLite/JDBC2z/JDBCStatement;

    invoke-direct {v0, p0}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 203
    .local v0, s:LSQLite/JDBC2z/JDBCStatement;
    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .registers 6
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .parameter "resultSetHoldability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x1

    if-eq p3, v0, :cond_b

    .line 426
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "unsupported holdability"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_b
    invoke-virtual {p0, p1, p2}, LSQLite/JDBC2z/JDBCConnection;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .registers 4
    .parameter "type"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getAutoCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 257
    iget-boolean v0, p0, LSQLite/JDBC2z/JDBCConnection;->autocommit:Z

    return v0
.end method

.method public getCatalog()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClientInfo()Ljava/util/Properties;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-object v0
.end method

.method public getHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->meta:LSQLite/JDBC2z/JDBCDatabaseMetaData;

    if-nez v0, :cond_b

    .line 208
    new-instance v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;

    invoke-direct {v0, p0}, LSQLite/JDBC2z/JDBCDatabaseMetaData;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    iput-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->meta:LSQLite/JDBC2z/JDBCDatabaseMetaData;

    .line 210
    :cond_b
    iget-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->meta:LSQLite/JDBC2z/JDBCDatabaseMetaData;

    return-object v0
.end method

.method public getSQLiteDatabase()LSQLite/Database;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 265
    iget v0, p0, LSQLite/JDBC2z/JDBCConnection;->trmode:I

    return v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 269
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
    .line 231
    iget-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReadOnly()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, LSQLite/JDBC2z/JDBCConnection;->readonly:Z

    return v0
.end method

.method public isValid(I)Z
    .registers 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x1

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
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .registers 5
    .parameter "sql"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .registers 6
    .parameter "sql"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .registers 3
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, LSQLite/JDBC2z/JDBCPreparedStatement;

    invoke-direct {v0, p0, p1}, LSQLite/JDBC2z/JDBCPreparedStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;Ljava/lang/String;)V

    .line 287
    .local v0, s:LSQLite/JDBC2z/JDBCPreparedStatement;
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .registers 5
    .parameter "sql"
    .parameter "autokeys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    .line 449
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "generated keys not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_b
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .registers 7
    .parameter "sql"
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 293
    const/16 v1, 0x3eb

    if-eq p2, v1, :cond_14

    const/16 v1, 0x3ec

    if-eq p2, v1, :cond_14

    const/16 v1, 0x3ed

    if-eq p2, v1, :cond_14

    .line 296
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "unsupported result set type"

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_14
    const/16 v1, 0x3ef

    if-eq p3, v1, :cond_24

    const/16 v1, 0x3f0

    if-eq p3, v1, :cond_24

    .line 300
    new-instance v1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v2, "unsupported result set concurrency"

    invoke-direct {v1, v2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_24
    new-instance v0, LSQLite/JDBC2z/JDBCPreparedStatement;

    invoke-direct {v0, p0, p1}, LSQLite/JDBC2z/JDBCPreparedStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;Ljava/lang/String;)V

    .line 303
    .local v0, s:LSQLite/JDBC2z/JDBCPreparedStatement;
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .registers 7
    .parameter "sql"
    .parameter "resultSetType"
    .parameter "resultSetConcurrency"
    .parameter "resultSetHoldability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 435
    const/4 v0, 0x1

    if-eq p4, v0, :cond_b

    .line 436
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "unsupported holdability"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, LSQLite/JDBC2z/JDBCConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .registers 4
    .parameter "sql"
    .parameter "colIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .registers 4
    .parameter "sql"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .registers 3
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public rollback()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-nez v1, :cond_c

    .line 308
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "stale connection"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_c
    iget-boolean v1, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    if-nez v1, :cond_11

    .line 319
    :goto_10
    return-void

    .line 314
    :cond_11
    :try_start_11
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v2, "ROLLBACK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z
    :try_end_1c
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 316
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 317
    .local v0, e:LSQLite/Exception;
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .registers 3
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public setAutoCommit(Z)V
    .registers 7
    .parameter "ac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 322
    if-eqz p1, :cond_15

    iget-boolean v1, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    if-eqz v1, :cond_15

    .line 324
    :try_start_b
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v2, "ROLLBACK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_24
    .catch LSQLite/Exception; {:try_start_b .. :try_end_13} :catch_18

    .line 328
    iput-boolean v4, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    .line 331
    :cond_15
    iput-boolean p1, p0, LSQLite/JDBC2z/JDBCConnection;->autocommit:Z

    .line 332
    return-void

    .line 325
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, e:LSQLite/Exception;
    :try_start_1a
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_24

    .line 328
    .end local v0           #e:LSQLite/Exception;
    :catchall_24
    move-exception v1

    iput-boolean v4, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    throw v1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .registers 2
    .parameter "catalog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 335
    return-void
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Ljava/sql/SQLClientInfoException;

    invoke-direct {v0}, Ljava/sql/SQLClientInfoException;-><init>()V

    throw v0
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .registers 3
    .parameter "prop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/sql/SQLClientInfoException;

    invoke-direct {v0}, Ljava/sql/SQLClientInfoException;-><init>()V

    throw v0
.end method

.method public setHoldability(I)V
    .registers 4
    .parameter "holdability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 400
    return-void

    .line 402
    :cond_4
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v1, "unsupported holdability"

    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(Z)V
    .registers 7
    .parameter "ro"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 338
    iget-boolean v3, p0, LSQLite/JDBC2z/JDBCConnection;->intrans:Z

    if-eqz v3, :cond_c

    .line 339
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "incomplete transaction"

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_c
    iget-boolean v3, p0, LSQLite/JDBC2z/JDBCConnection;->readonly:Z

    if-eq p1, v3, :cond_1f

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, dbx:LSQLite/JDBC2z/DatabaseX;
    :try_start_11
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCConnection;->open(Z)LSQLite/JDBC2z/DatabaseX;

    move-result-object v0

    .line 345
    iget-object v3, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v3}, LSQLite/JDBC2z/DatabaseX;->close()V

    .line 346
    iput-object v0, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    .line 347
    const/4 v0, 0x0

    .line 348
    iput-boolean p1, p0, LSQLite/JDBC2z/JDBCConnection;->readonly:Z
    :try_end_1f
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_1f} :catch_20
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_1f} :catch_23

    .line 361
    .end local v0           #dbx:LSQLite/JDBC2z/DatabaseX;
    :cond_1f
    return-void

    .line 349
    .restart local v0       #dbx:LSQLite/JDBC2z/DatabaseX;
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 350
    .local v1, e:Ljava/sql/SQLException;
    throw v1

    .line 351
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_23
    move-exception v3

    move-object v2, v3

    .line 352
    .local v2, ee:LSQLite/Exception;
    if-eqz v0, :cond_2a

    .line 354
    :try_start_27
    invoke-virtual {v0}, LSQLite/JDBC2z/DatabaseX;->close()V
    :try_end_2a
    .catch LSQLite/Exception; {:try_start_27 .. :try_end_2a} :catch_34

    .line 358
    :cond_2a
    :goto_2a
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    :catch_34
    move-exception v3

    goto :goto_2a
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public setTransactionIsolation(I)V
    .registers 6
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 364
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v1}, LSQLite/JDBC2z/DatabaseX;->is3()Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-boolean v1, LSQLite/JDBCDriver;->sharedCache:Z

    if-eqz v1, :cond_3b

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, flag:Ljava/lang/String;
    if-ne p1, v2, :cond_47

    iget v1, p0, LSQLite/JDBC2z/JDBCConnection;->trmode:I

    if-eq v1, v2, :cond_47

    .line 368
    const-string v0, "on"

    .line 373
    :cond_18
    :goto_18
    if-eqz v0, :cond_3b

    .line 375
    :try_start_1a
    iget-object v1, p0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA read_uncommitted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 376
    iput p1, p0, LSQLite/JDBC2z/JDBCConnection;->trmode:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3b} :catch_51

    .line 381
    .end local v0           #flag:Ljava/lang/String;
    :cond_3b
    :goto_3b
    iget v1, p0, LSQLite/JDBC2z/JDBCConnection;->trmode:I

    if-eq p1, v1, :cond_50

    .line 382
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "not supported"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    .restart local v0       #flag:Ljava/lang/String;
    :cond_47
    if-ne p1, v3, :cond_18

    iget v1, p0, LSQLite/JDBC2z/JDBCConnection;->trmode:I

    if-eq v1, v3, :cond_18

    .line 371
    const-string v0, "off"

    goto :goto_18

    .line 384
    .end local v0           #flag:Ljava/lang/String;
    :cond_50
    return-void

    .line 377
    .restart local v0       #flag:Ljava/lang/String;
    :catch_51
    move-exception v1

    goto :goto_3b
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .registers 3
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
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
    .line 512
    .local p1, iface:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
