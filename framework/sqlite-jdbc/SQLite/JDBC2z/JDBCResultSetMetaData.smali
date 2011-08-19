.class public LSQLite/JDBC2z/JDBCResultSetMetaData;
.super Ljava/lang/Object;
.source "JDBCResultSetMetaData.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private r:LSQLite/JDBC2z/JDBCResultSet;


# direct methods
.method public constructor <init>(LSQLite/JDBC2z/JDBCResultSet;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    .line 11
    return-void
.end method


# virtual methods
.method findColByName(Ljava/lang/String;)I
    .registers 8
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, c:Ljava/lang/String;
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v3, :cond_42

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v3, v3, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_42

    .line 195
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v3, v3, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-ge v1, v3, :cond_42

    .line 196
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v3, v3, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 197
    if-eqz v0, :cond_3e

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    .line 199
    add-int/lit8 v3, v1, 0x1

    .line 205
    :goto_26
    return v3

    .line 201
    :cond_27
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 202
    .local v2, k:I
    if-lez v2, :cond_3e

    .line 203
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3e

    .line 205
    add-int/lit8 v3, v1, 0x1

    goto :goto_26

    .line 209
    .end local v2           #k:I
    :cond_3e
    const/4 v0, 0x0

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 212
    .end local v1           #i:I
    :cond_42
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCatalogName(I)Ljava/lang/String;
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .registers 4
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v0, :cond_4c

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_4c

    .line 20
    if-ltz p1, :cond_17

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v0, :cond_19

    :cond_17
    move-object v0, v1

    .line 41
    .end local p0
    :goto_18
    return-object v0

    .line 23
    .restart local p0
    :cond_19
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v0, v0, LSQLite/JDBC2z/TableResultX;

    if-eqz v0, :cond_2e

    .line 24
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object p0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    .end local p0
    check-cast p0, LSQLite/JDBC2z/TableResultX;

    iget-object v0, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    aget v0, v0, p1

    sparse-switch v0, :sswitch_data_4e

    .line 39
    :cond_2e
    const-string v0, "java.lang.String"

    goto :goto_18

    .line 25
    :sswitch_31
    const-string v0, "java.lang.Short"

    goto :goto_18

    .line 26
    :sswitch_34
    const-string v0, "java.lang.Integer"

    goto :goto_18

    .line 28
    :sswitch_37
    const-string v0, "java.lang.Double"

    goto :goto_18

    .line 29
    :sswitch_3a
    const-string v0, "java.lang.Float"

    goto :goto_18

    .line 30
    :sswitch_3d
    const-string v0, "java.lang.Long"

    goto :goto_18

    .line 31
    :sswitch_40
    const-string v0, "java.sql.Date"

    goto :goto_18

    .line 32
    :sswitch_43
    const-string v0, "java.sql.Time"

    goto :goto_18

    .line 33
    :sswitch_46
    const-string v0, "java.sql.Timestamp"

    goto :goto_18

    .line 35
    :sswitch_49
    const-string v0, "[B"

    goto :goto_18

    .restart local p0
    :cond_4c
    move-object v0, v1

    .line 41
    goto :goto_18

    .line 24
    :sswitch_data_4e
    .sparse-switch
        -0x5 -> :sswitch_3d
        -0x3 -> :sswitch_49
        -0x2 -> :sswitch_49
        0x4 -> :sswitch_34
        0x5 -> :sswitch_31
        0x6 -> :sswitch_3a
        0x7 -> :sswitch_37
        0x8 -> :sswitch_37
        0x5b -> :sswitch_40
        0x5c -> :sswitch_43
        0x5d -> :sswitch_46
    .end sparse-switch
.end method

.method public getColumnCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v0, :cond_11

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    .line 48
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getColumnDisplaySize(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .registers 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v2, :cond_21

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_21

    .line 59
    if-ltz p1, :cond_17

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v2, :cond_19

    :cond_17
    move-object v1, v0

    .line 64
    .end local v0           #c:Ljava/lang/String;
    .local v1, c:Ljava/lang/String;
    :goto_18
    return-object v1

    .line 62
    .end local v1           #c:Ljava/lang/String;
    .restart local v0       #c:Ljava/lang/String;
    :cond_19
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v2, p1

    :cond_21
    move-object v1, v0

    .line 64
    .end local v0           #c:Ljava/lang/String;
    .restart local v1       #c:Ljava/lang/String;
    goto :goto_18
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v2, :cond_32

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_32

    .line 71
    if-ltz p1, :cond_17

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v2, :cond_19

    :cond_17
    move-object v2, v0

    .line 82
    :goto_18
    return-object v2

    .line 74
    :cond_19
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 75
    if-eqz v0, :cond_32

    .line 76
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 77
    .local v1, i:I
    if-lez v1, :cond_32

    .line 78
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .end local v1           #i:I
    :cond_32
    move-object v2, v0

    .line 82
    goto :goto_18
.end method

.method public getColumnType(I)I
    .registers 4
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 86
    add-int/lit8 p1, p1, -0x1

    .line 87
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v0, :cond_2c

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_2c

    .line 88
    if-ltz p1, :cond_2c

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-ge p1, v0, :cond_2c

    .line 89
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v0, v0, LSQLite/JDBC2z/TableResultX;

    if-eqz v0, :cond_29

    .line 90
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object p0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    .end local p0
    check-cast p0, LSQLite/JDBC2z/TableResultX;

    iget-object v0, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    aget v0, v0, p1

    .line 92
    :goto_28
    return v0

    .restart local p0
    :cond_29
    const/16 v0, 0xc

    goto :goto_28

    .line 95
    :cond_2c
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad column index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .registers 4
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 99
    add-int/lit8 p1, p1, -0x1

    .line 100
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v0, :cond_4f

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_4f

    .line 101
    if-ltz p1, :cond_4f

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-ge p1, v0, :cond_4f

    .line 102
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v0, v0, LSQLite/JDBC2z/TableResultX;

    if-eqz v0, :cond_2b

    .line 103
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object p0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    .end local p0
    check-cast p0, LSQLite/JDBC2z/TableResultX;

    iget-object v0, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    aget v0, v0, p1

    sparse-switch v0, :sswitch_data_58

    .line 118
    :cond_2b
    const-string v0, "varchar"

    :goto_2d
    return-object v0

    .line 104
    :sswitch_2e
    const-string v0, "smallint"

    goto :goto_2d

    .line 105
    :sswitch_31
    const-string v0, "integer"

    goto :goto_2d

    .line 106
    :sswitch_34
    const-string v0, "double"

    goto :goto_2d

    .line 107
    :sswitch_37
    const-string v0, "float"

    goto :goto_2d

    .line 108
    :sswitch_3a
    const-string v0, "bigint"

    goto :goto_2d

    .line 109
    :sswitch_3d
    const-string v0, "date"

    goto :goto_2d

    .line 110
    :sswitch_40
    const-string v0, "time"

    goto :goto_2d

    .line 111
    :sswitch_43
    const-string v0, "timestamp"

    goto :goto_2d

    .line 112
    :sswitch_46
    const-string v0, "binary"

    goto :goto_2d

    .line 113
    :sswitch_49
    const-string v0, "varbinary"

    goto :goto_2d

    .line 114
    :sswitch_4c
    const-string v0, "real"

    goto :goto_2d

    .line 121
    .restart local p0
    :cond_4f
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "bad column index"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    nop

    :sswitch_data_58
    .sparse-switch
        -0x5 -> :sswitch_3a
        -0x3 -> :sswitch_49
        -0x2 -> :sswitch_46
        0x4 -> :sswitch_31
        0x5 -> :sswitch_2e
        0x6 -> :sswitch_37
        0x7 -> :sswitch_4c
        0x8 -> :sswitch_34
        0x5b -> :sswitch_3d
        0x5c -> :sswitch_40
        0x5d -> :sswitch_43
    .end sparse-switch
.end method

.method public getPrecision(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getScale(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .registers 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 137
    add-int/lit8 p1, p1, -0x1

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    if-eqz v2, :cond_32

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_32

    .line 140
    if-ltz p1, :cond_17

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-lt p1, v2, :cond_19

    :cond_17
    move-object v2, v0

    .line 152
    :goto_18
    return-object v2

    .line 143
    :cond_19
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSetMetaData;->r:LSQLite/JDBC2z/JDBCResultSet;

    iget-object v2, v2, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 144
    if-eqz v0, :cond_32

    .line 145
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 146
    .local v1, i:I
    if-lez v1, :cond_31

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 149
    :cond_31
    const/4 v0, 0x0

    .end local v1           #i:I
    :cond_32
    move-object v2, v0

    .line 152
    goto :goto_18
.end method

.method public isAutoIncrement(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public isCaseSensitive(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrency(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isDefinitelyWritable(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public isNullable(I)I
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x2

    return v0
.end method

.method public isReadOnly(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isSearchable(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public isSigned(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 185
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
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .registers 3
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
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
    .line 216
    .local p1, iface:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
