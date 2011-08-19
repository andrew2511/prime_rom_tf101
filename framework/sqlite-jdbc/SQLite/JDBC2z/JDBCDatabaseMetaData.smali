.class public LSQLite/JDBC2z/JDBCDatabaseMetaData;
.super Ljava/lang/Object;
.source "JDBCDatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# instance fields
.field private conn:LSQLite/JDBC2z/JDBCConnection;


# direct methods
.method public constructor <init>(LSQLite/JDBC2z/JDBCConnection;)V
    .registers 2
    .parameter "conn"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    .line 12
    return-void
.end method

.method static getD(Ljava/lang/String;I)I
    .registers 7
    .parameter "typeStr"
    .parameter "type"

    .prologue
    .line 1545
    const/4 v0, 0x0

    .line 1546
    .local v0, d:I
    packed-switch p1, :pswitch_data_48

    .line 1552
    invoke-static {p0, p1}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->getM(Ljava/lang/String;I)I

    move-result v4

    .line 1572
    :goto_8
    return v4

    .line 1547
    :pswitch_9
    const/16 v0, 0xa

    .line 1554
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1555
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1556
    .local v1, i1:I
    if-lez v1, :cond_43

    .line 1557
    add-int/lit8 v1, v1, 0x1

    .line 1558
    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1559
    .local v2, i2:I
    if-gez v2, :cond_2e

    .line 1560
    invoke-static {p0, p1}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->getM(Ljava/lang/String;I)I

    move-result v4

    goto :goto_8

    .line 1548
    .end local v1           #i1:I
    .end local v2           #i2:I
    :pswitch_26
    const/4 v0, 0x5

    goto :goto_b

    .line 1549
    :pswitch_28
    const/16 v0, 0x18

    goto :goto_b

    .line 1551
    :pswitch_2b
    const/16 v0, 0x35

    goto :goto_b

    .line 1562
    .restart local v1       #i1:I
    .restart local v2       #i2:I
    :cond_2e
    move v1, v2

    .line 1563
    const/16 v4, 0x29

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1564
    sub-int v4, v2, v1

    if-lez v4, :cond_43

    .line 1565
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1567
    .local v3, num:Ljava/lang/String;
    const/16 v4, 0xa

    :try_start_3f
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_42} :catch_45

    move-result v0

    .end local v2           #i2:I
    .end local v3           #num:Ljava/lang/String;
    :cond_43
    :goto_43
    move v4, v0

    .line 1572
    goto :goto_8

    .line 1568
    .restart local v2       #i2:I
    .restart local v3       #num:Ljava/lang/String;
    :catch_45
    move-exception v4

    goto :goto_43

    .line 1546
    nop

    :pswitch_data_48
    .packed-switch 0x4
        :pswitch_9
        :pswitch_26
        :pswitch_28
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method static getM(Ljava/lang/String;I)I
    .registers 7
    .parameter "typeStr"
    .parameter "type"

    .prologue
    const/16 v4, 0xa

    .line 1514
    const/high16 v2, 0x1

    .line 1515
    .local v2, m:I
    sparse-switch p1, :sswitch_data_46

    .line 1525
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1526
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1527
    .local v0, i1:I
    if-lez v0, :cond_31

    .line 1528
    add-int/lit8 v0, v0, 0x1

    .line 1529
    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1530
    .local v1, i2:I
    if-gez v1, :cond_23

    .line 1531
    const/16 v4, 0x29

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1533
    :cond_23
    sub-int v4, v1, v0

    if-lez v4, :cond_31

    .line 1534
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1536
    .local v3, num:Ljava/lang/String;
    const/16 v4, 0xa

    :try_start_2d
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_30} :catch_44

    move-result v2

    .end local v1           #i2:I
    .end local v3           #num:Ljava/lang/String;
    :cond_31
    :goto_31
    move v4, v2

    .line 1541
    .end local v0           #i1:I
    :goto_32
    :sswitch_32
    return v4

    .line 1516
    :sswitch_33
    const/16 v2, 0xb

    goto :goto_7

    .line 1517
    :sswitch_36
    const/4 v2, 0x6

    goto :goto_7

    .line 1518
    :sswitch_38
    const/16 v2, 0x19

    goto :goto_7

    .line 1520
    :sswitch_3b
    const/16 v2, 0x36

    goto :goto_7

    .line 1521
    :sswitch_3e
    const/16 v4, 0x1e

    goto :goto_32

    .line 1523
    :sswitch_41
    const/16 v4, 0x8

    goto :goto_32

    .line 1537
    .restart local v0       #i1:I
    .restart local v1       #i2:I
    .restart local v3       #num:Ljava/lang/String;
    :catch_44
    move-exception v4

    goto :goto_31

    .line 1515
    :sswitch_data_46
    .sparse-switch
        0x4 -> :sswitch_33
        0x5 -> :sswitch_36
        0x6 -> :sswitch_38
        0x7 -> :sswitch_3b
        0x8 -> :sswitch_3b
        0x5b -> :sswitch_32
        0x5c -> :sswitch_41
        0x5d -> :sswitch_3e
    .end sparse-switch
.end method

.method private internalImportedKeys(Ljava/lang/String;Ljava/lang/String;LSQLite/JDBC2z/JDBCResultSet;LSQLite/JDBC2z/TableResultX;)V
    .registers 18
    .parameter "table"
    .parameter "pktable"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 983
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 984
    .local v4, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget v11, v11, LSQLite/TableResult;->ncolumns:I

    if-ge v5, v11, :cond_22

    .line 985
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget-object v11, v11, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 987
    :cond_22
    const/4 v5, 0x0

    .end local p0
    :goto_23
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget v11, v11, LSQLite/TableResult;->nrows:I

    if-ge v5, v11, :cond_de

    .line 988
    move-object/from16 v0, p3

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget-object v11, v11, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 989
    .local v8, r0:[Ljava/lang/String;
    const-string v11, "table"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 990
    .local v2, col:I
    aget-object v7, v8, v2

    .line 991
    .local v7, pktab:Ljava/lang/String;
    if-eqz p2, :cond_56

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_56

    .line 987
    :goto_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 994
    :cond_56
    const-string v11, "from"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 995
    aget-object v3, v8, v2

    .line 996
    .local v3, fkcol:Ljava/lang/String;
    const-string v11, "to"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 997
    aget-object v6, v8, v2

    .line 998
    .local v6, pkcol:Ljava/lang/String;
    const-string v11, "seq"

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 999
    aget-object v10, v8, v2

    .line 1000
    .local v10, seq:Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    move v11, v0

    new-array v9, v11, [Ljava/lang/String;

    .line 1001
    .local v9, row:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v9, v11

    .line 1002
    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v9, v11

    .line 1003
    const/4 v11, 0x2

    aput-object v7, v9, v11

    .line 1004
    const/4 v11, 0x3

    aput-object v6, v9, v11

    .line 1005
    const/4 v11, 0x4

    const-string v12, ""

    aput-object v12, v9, v11

    .line 1006
    const/4 v11, 0x5

    const-string v12, ""

    aput-object v12, v9, v11

    .line 1007
    const/4 v11, 0x6

    aput-object p1, v9, v11

    .line 1008
    const/4 v11, 0x7

    if-nez v3, :cond_dc

    move-object v12, v6

    :goto_a8
    aput-object v12, v9, v11

    .line 1009
    const/16 v11, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 1010
    const/16 v11, 0x9

    const-string v12, "3"

    aput-object v12, v9, v11

    .line 1012
    const/16 v11, 0xa

    const-string v12, "3"

    aput-object v12, v9, v11

    .line 1014
    const/16 v11, 0xb

    const/4 v12, 0x0

    aput-object v12, v9, v11

    .line 1015
    const/16 v11, 0xc

    const/4 v12, 0x0

    aput-object v12, v9, v11

    .line 1016
    const/16 v11, 0xd

    const-string v12, "7"

    aput-object v12, v9, v11

    .line 1018
    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    goto/16 :goto_53

    :cond_dc
    move-object v12, v3

    .line 1008
    goto :goto_a8

    .line 1020
    .end local v2           #col:I
    .end local v3           #fkcol:Ljava/lang/String;
    .end local v6           #pkcol:Ljava/lang/String;
    .end local v7           #pktab:Ljava/lang/String;
    .end local v8           #r0:[Ljava/lang/String;
    .end local v9           #row:[Ljava/lang/String;
    .end local v10           #seq:Ljava/lang/String;
    :cond_de
    return-void
.end method

.method static mapSqlType(Ljava/lang/String;)I
    .registers 4
    .parameter "type"

    .prologue
    const/4 v2, -0x2

    const/16 v1, 0xc

    .line 1467
    if-nez p0, :cond_7

    move v0, v1

    .line 1510
    :goto_6
    return v0

    .line 1470
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1471
    const-string v0, "inter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 1472
    goto :goto_6

    .line 1474
    :cond_15
    const-string v0, "numeric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1476
    :cond_25
    const/4 v0, 0x4

    goto :goto_6

    .line 1478
    :cond_27
    const-string v0, "tinyint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "smallint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1480
    :cond_37
    const/4 v0, 0x5

    goto :goto_6

    .line 1482
    :cond_39
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1483
    const/4 v0, 0x6

    goto :goto_6

    .line 1485
    :cond_43
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1486
    const/16 v0, 0x8

    goto :goto_6

    .line 1488
    :cond_4e
    const-string v0, "datetime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1490
    :cond_5e
    const/16 v0, 0x5d

    goto :goto_6

    .line 1492
    :cond_61
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1493
    const/16 v0, 0x5b

    goto :goto_6

    .line 1495
    :cond_6c
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1496
    const/16 v0, 0x5c

    goto :goto_6

    .line 1498
    :cond_77
    const-string v0, "blob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v2

    .line 1499
    goto :goto_6

    .line 1501
    :cond_81
    const-string v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    move v0, v2

    .line 1502
    goto/16 :goto_6

    .line 1504
    :cond_8c
    const-string v0, "varbinary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1505
    const/4 v0, -0x3

    goto/16 :goto_6

    .line 1507
    :cond_97
    const-string v0, "real"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1508
    const/4 v0, 0x7

    goto/16 :goto_6

    :cond_a2
    move v0, v1

    .line 1510
    goto/16 :goto_6
.end method

.method static mapTypeName(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 1451
    sparse-switch p0, :sswitch_data_24

    .line 1463
    const-string v0, "varchar"

    :goto_5
    return-object v0

    .line 1452
    :sswitch_6
    const-string v0, "integer"

    goto :goto_5

    .line 1453
    :sswitch_9
    const-string v0, "smallint"

    goto :goto_5

    .line 1454
    :sswitch_c
    const-string v0, "float"

    goto :goto_5

    .line 1455
    :sswitch_f
    const-string v0, "double"

    goto :goto_5

    .line 1456
    :sswitch_12
    const-string v0, "timestamp"

    goto :goto_5

    .line 1457
    :sswitch_15
    const-string v0, "date"

    goto :goto_5

    .line 1458
    :sswitch_18
    const-string v0, "time"

    goto :goto_5

    .line 1459
    :sswitch_1b
    const-string v0, "binary"

    goto :goto_5

    .line 1460
    :sswitch_1e
    const-string v0, "varbinary"

    goto :goto_5

    .line 1461
    :sswitch_21
    const-string v0, "real"

    goto :goto_5

    .line 1451
    :sswitch_data_24
    .sparse-switch
        -0x3 -> :sswitch_1e
        -0x2 -> :sswitch_1b
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_c
        0x7 -> :sswitch_21
        0x8 -> :sswitch_f
        0x5b -> :sswitch_15
        0x5c -> :sswitch_18
        0x5d -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public autoCommitFailureClosesAllResultSets()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1662
    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1429
    const/4 v0, 0x0

    return v0
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 7
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "typeNamePattern"
    .parameter "attributeNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1619
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .registers 38
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .parameter "scope"
    .parameter "nullable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 729
    new-instance v22, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 730
    .local v22, s0:LSQLite/JDBC2z/JDBCStatement;
    const/16 v19, 0x0

    .line 731
    .local v19, rs0:LSQLite/JDBC2z/JDBCResultSet;
    new-instance v23, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 732
    .local v23, s1:LSQLite/JDBC2z/JDBCStatement;
    const/16 v20, 0x0

    .line 735
    .local v20, rs1:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    move-object/from16 v29, v0

    const-string v30, "SELECT 1 FROM sqlite_master LIMIT 1"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_165
    .catch LSQLite/Exception; {:try_start_22 .. :try_end_35} :catch_156
    .catch Ljava/sql/SQLException; {:try_start_22 .. :try_end_35} :catch_161

    .line 739
    :try_start_35
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "PRAGMA index_list("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v19, v0

    .line 742
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "PRAGMA table_info("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v20, v0
    :try_end_8f
    .catchall {:try_start_35 .. :try_end_8f} :catchall_165
    .catch Ljava/sql/SQLException; {:try_start_35 .. :try_end_8f} :catch_161

    .line 748
    invoke-virtual/range {v22 .. v22}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 749
    invoke-virtual/range {v23 .. v23}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 751
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    const/16 v29, 0x0

    const-string v30, "SCOPE"

    aput-object v30, v5, v29

    const/16 v29, 0x1

    const-string v30, "COLUMN_NAME"

    aput-object v30, v5, v29

    const/16 v29, 0x2

    const-string v30, "DATA_TYPE"

    aput-object v30, v5, v29

    const/16 v29, 0x3

    const-string v30, "TYPE_NAME"

    aput-object v30, v5, v29

    const/16 v29, 0x4

    const-string v30, "COLUMN_SIZE"

    aput-object v30, v5, v29

    const/16 v29, 0x5

    const-string v30, "BUFFER_LENGTH"

    aput-object v30, v5, v29

    const/16 v29, 0x6

    const-string v30, "DECIMAL_DIGITS"

    aput-object v30, v5, v29

    const/16 v29, 0x7

    const-string v30, "PSEUDO_COLUMN"

    aput-object v30, v5, v29

    .line 756
    .local v5, cols:[Ljava/lang/String;
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_3d6

    .line 761
    .local v27, types:[I
    new-instance v26, LSQLite/JDBC2z/TableResultX;

    invoke-direct/range {v26 .. v26}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 762
    .local v26, tr:LSQLite/JDBC2z/TableResultX;
    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {v26 .. v27}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 764
    new-instance v18, LSQLite/JDBC2z/JDBCResultSet;

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 765
    .local v18, rs:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz v19, :cond_377

    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    if-eqz v29, :cond_377

    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v29, v0

    if-lez v29, :cond_377

    if-eqz v20, :cond_377

    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    if-eqz v29, :cond_377

    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v29, v0

    if-lez v29, :cond_377

    .line 767
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 768
    .local v7, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_128
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v29, v0

    move v0, v10

    move/from16 v1, v29

    if-ge v0, v1, :cond_16d

    .line 769
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v7

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    add-int/lit8 v10, v10, 0x1

    goto :goto_128

    .line 736
    .end local v5           #cols:[Ljava/lang/String;
    .end local v7           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #i:I
    .end local v18           #rs:LSQLite/JDBC2z/JDBCResultSet;
    .end local v26           #tr:LSQLite/JDBC2z/TableResultX;
    .end local v27           #types:[I
    .restart local p1
    :catch_156
    move-exception v29

    move-object/from16 v25, v29

    .line 737
    .local v25, se:LSQLite/Exception;
    :try_start_159
    new-instance v29, Ljava/sql/SQLException;

    const-string v30, "schema reload failed"

    invoke-direct/range {v29 .. v30}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_161
    .catchall {:try_start_159 .. :try_end_161} :catchall_165
    .catch Ljava/sql/SQLException; {:try_start_159 .. :try_end_161} :catch_161

    .line 745
    .end local v25           #se:LSQLite/Exception;
    .end local p1
    :catch_161
    move-exception v29

    move-object/from16 v6, v29

    .line 746
    .local v6, e:Ljava/sql/SQLException;
    :try_start_164
    throw v6
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_165

    .line 748
    .end local v6           #e:Ljava/sql/SQLException;
    :catchall_165
    move-exception v29

    invoke-virtual/range {v22 .. v22}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 749
    invoke-virtual/range {v23 .. v23}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v29

    .line 771
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v7       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #i:I
    .restart local v18       #rs:LSQLite/JDBC2z/JDBCResultSet;
    .restart local v26       #tr:LSQLite/JDBC2z/TableResultX;
    .restart local v27       #types:[I
    :cond_16d
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 772
    .local v8, h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    :goto_173
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v29, v0

    move v0, v10

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a1

    .line 773
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v8

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    add-int/lit8 v10, v10, 0x1

    goto :goto_173

    .line 775
    :cond_1a1
    const/4 v10, 0x0

    :goto_1a2
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v29, v0

    move v0, v10

    move/from16 v1, v29

    if-ge v0, v1, :cond_377

    .line 776
    move-object/from16 v0, v19

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    .line 777
    .local v14, r0:[Ljava/lang/String;
    const-string v29, "unique"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 778
    .local v4, col:I
    aget-object v28, v14, v4

    .line 779
    .local v28, uniq:Ljava/lang/String;
    const-string v29, "name"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 780
    aget-object v11, v14, v4

    .line 781
    .local v11, iname:Ljava/lang/String;
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_200

    .line 775
    :cond_1fd
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a2

    .line 784
    :cond_200
    new-instance v24, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 785
    .local v24, s2:LSQLite/JDBC2z/JDBCStatement;
    const/16 v21, 0x0

    .line 787
    .local v21, rs2:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_211
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "PRAGMA index_info("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v11}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v21, v0
    :try_end_23e
    .catchall {:try_start_211 .. :try_end_23e} :catchall_292
    .catch Ljava/sql/SQLException; {:try_start_211 .. :try_end_23e} :catch_28d

    .line 792
    invoke-virtual/range {v24 .. v24}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 794
    :goto_241
    if-eqz v21, :cond_1fd

    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1fd

    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v29, v0

    if-lez v29, :cond_1fd

    .line 797
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 799
    .local v9, h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, k:I
    :goto_25f
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v29, v0

    move v0, v12

    move/from16 v1, v29

    if-ge v0, v1, :cond_297

    .line 800
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v9

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    add-int/lit8 v12, v12, 0x1

    goto :goto_25f

    .line 790
    .end local v9           #h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12           #k:I
    :catch_28d
    move-exception v29

    .line 792
    invoke-virtual/range {v24 .. v24}, LSQLite/JDBC2z/JDBCStatement;->close()V

    goto :goto_241

    :catchall_292
    move-exception v29

    invoke-virtual/range {v24 .. v24}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v29

    .line 802
    .restart local v9       #h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12       #k:I
    :cond_297
    const/4 v12, 0x0

    :goto_298
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v29, v0

    move v0, v12

    move/from16 v1, v29

    if-ge v0, v1, :cond_1fd

    .line 803
    move-object/from16 v0, v21

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 804
    .local v16, r2:[Ljava/lang/String;
    const-string v29, "name"

    move-object v0, v9

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 805
    aget-object v3, v16, v4

    .line 806
    .local v3, cname:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, m:I
    :goto_2d6
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v29, v0

    move v0, v13

    move/from16 v1, v29

    if-ge v0, v1, :cond_373

    .line 807
    move-object/from16 v0, v20

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 808
    .local v15, r1:[Ljava/lang/String;
    const-string v29, "name"

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 809
    aget-object v29, v15, v4

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_36f

    .line 810
    move-object v0, v5

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 811
    .local v17, row:[Ljava/lang/String;
    const/16 v29, 0x0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v17, v29

    .line 812
    const/16 v29, 0x1

    aput-object v3, v17, v29

    .line 813
    const/16 v29, 0x2

    const-string v30, "12"

    aput-object v30, v17, v29

    .line 814
    const/16 v29, 0x3

    const-string v30, "VARCHAR"

    aput-object v30, v17, v29

    .line 815
    const/16 v29, 0x4

    const-string v30, "65536"

    aput-object v30, v17, v29

    .line 816
    const/16 v29, 0x5

    const-string v30, "0"

    aput-object v30, v17, v29

    .line 817
    const/16 v29, 0x6

    const-string v30, "0"

    aput-object v30, v17, v29

    .line 818
    const/16 v29, 0x7

    const-string v30, "1"

    aput-object v30, v17, v29

    .line 819
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 806
    .end local v17           #row:[Ljava/lang/String;
    :cond_36f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2d6

    .line 802
    .end local v15           #r1:[Ljava/lang/String;
    :cond_373
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_298

    .line 825
    .end local v3           #cname:Ljava/lang/String;
    .end local v4           #col:I
    .end local v7           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9           #h2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #i:I
    .end local v11           #iname:Ljava/lang/String;
    .end local v12           #k:I
    .end local v13           #m:I
    .end local v14           #r0:[Ljava/lang/String;
    .end local v16           #r2:[Ljava/lang/String;
    .end local v21           #rs2:LSQLite/JDBC2z/JDBCResultSet;
    .end local v24           #s2:LSQLite/JDBC2z/JDBCStatement;
    .end local v28           #uniq:Ljava/lang/String;
    :cond_377
    move-object/from16 v0, v26

    iget v0, v0, LSQLite/JDBC2z/TableResultX;->nrows:I

    move/from16 v29, v0

    if-gtz v29, :cond_3d5

    .line 826
    move-object v0, v5

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 827
    .restart local v17       #row:[Ljava/lang/String;
    const/16 v29, 0x0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v17, v29

    .line 828
    const/16 v29, 0x1

    const-string v30, "_ROWID_"

    aput-object v30, v17, v29

    .line 829
    const/16 v29, 0x2

    const-string v30, "4"

    aput-object v30, v17, v29

    .line 830
    const/16 v29, 0x3

    const-string v30, "INTEGER"

    aput-object v30, v17, v29

    .line 831
    const/16 v29, 0x4

    const-string v30, "10"

    aput-object v30, v17, v29

    .line 832
    const/16 v29, 0x5

    const-string v30, "0"

    aput-object v30, v17, v29

    .line 833
    const/16 v29, 0x6

    const-string v30, "0"

    aput-object v30, v17, v29

    .line 834
    const/16 v29, 0x7

    const-string v30, "2"

    aput-object v30, v17, v29

    .line 835
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 837
    .end local v17           #row:[Ljava/lang/String;
    :cond_3d5
    return-object v18

    .line 756
    :array_3d6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v0, ""

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v0, ""

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 564
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "TABLE_CAT"

    aput-object v4, v0, v5

    .line 565
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, LSQLite/TableResult;

    invoke-direct {v3}, LSQLite/TableResult;-><init>()V

    .line 566
    .local v3, tr:LSQLite/TableResult;
    invoke-virtual {v3, v0}, LSQLite/TableResult;->columns([Ljava/lang/String;)V

    .line 567
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v5

    .line 568
    .local v1, row:[Ljava/lang/String;
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 569
    new-instance v2, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 570
    .local v2, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v2
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1666
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 12
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .parameter "columnNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 688
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "TABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "TABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "COLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "GRANTOR"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "GRANTEE"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "PRIVILEGE"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "IS_GRANTABLE"

    aput-object v5, v0, v4

    .line 693
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_44

    .line 698
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 699
    .local v2, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 700
    invoke-virtual {v2, v3}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 701
    new-instance v1, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 702
    .local v1, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v1

    .line 693
    nop

    :array_44
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 26
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .parameter "columnNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    move-object/from16 v18, v0

    if-nez v18, :cond_16

    .line 592
    new-instance v18, Ljava/sql/SQLException;

    const-string v19, "connection closed."

    invoke-direct/range {v18 .. v19}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 594
    :cond_16
    new-instance v12, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 595
    .local v12, s:LSQLite/JDBC2z/JDBCStatement;
    const/4 v11, 0x0

    .line 598
    .local v11, rs0:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    move-object/from16 v18, v0

    const-string v19, "SELECT 1 FROM sqlite_master LIMIT 1"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_a8
    .catch LSQLite/Exception; {:try_start_25 .. :try_end_38} :catch_99
    .catch Ljava/sql/SQLException; {:try_start_25 .. :try_end_38} :catch_a4

    .line 602
    :try_start_38
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PRAGMA table_info("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    .end local p0
    check-cast p0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p0

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object v11, v0

    .line 606
    invoke-virtual {v12}, LSQLite/JDBC2z/JDBCStatement;->close()V
    :try_end_66
    .catchall {:try_start_38 .. :try_end_66} :catchall_a8
    .catch Ljava/sql/SQLException; {:try_start_38 .. :try_end_66} :catch_a4

    .line 610
    invoke-virtual {v12}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 612
    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_ad

    .line 613
    new-instance v18, Ljava/sql/SQLException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "no such table: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 599
    .restart local p0
    :catch_99
    move-exception v18

    move-object/from16 v13, v18

    .line 600
    .local v13, se:LSQLite/Exception;
    :try_start_9c
    new-instance v18, Ljava/sql/SQLException;

    const-string v19, "schema reload failed"

    invoke-direct/range {v18 .. v19}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a8
    .catch Ljava/sql/SQLException; {:try_start_9c .. :try_end_a4} :catch_a4

    .line 607
    .end local v13           #se:LSQLite/Exception;
    .end local p0
    :catch_a4
    move-exception v18

    move-object/from16 v5, v18

    .line 608
    .local v5, e:Ljava/sql/SQLException;
    :try_start_a7
    throw v5
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    .line 610
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_a8
    move-exception v18

    invoke-virtual {v12}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v18

    .line 615
    :cond_ad
    const/16 v18, 0x12

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v18, 0x0

    const-string v19, "TABLE_CAT"

    aput-object v19, v4, v18

    const/16 v18, 0x1

    const-string v19, "TABLE_SCHEM"

    aput-object v19, v4, v18

    const/16 v18, 0x2

    const-string v19, "TABLE_NAME"

    aput-object v19, v4, v18

    const/16 v18, 0x3

    const-string v19, "COLUMN_NAME"

    aput-object v19, v4, v18

    const/16 v18, 0x4

    const-string v19, "DATA_TYPE"

    aput-object v19, v4, v18

    const/16 v18, 0x5

    const-string v19, "TYPE_NAME"

    aput-object v19, v4, v18

    const/16 v18, 0x6

    const-string v19, "COLUMN_SIZE"

    aput-object v19, v4, v18

    const/16 v18, 0x7

    const-string v19, "BUFFER_LENGTH"

    aput-object v19, v4, v18

    const/16 v18, 0x8

    const-string v19, "DECIMAL_DIGITS"

    aput-object v19, v4, v18

    const/16 v18, 0x9

    const-string v19, "NUM_PREC_RADIX"

    aput-object v19, v4, v18

    const/16 v18, 0xa

    const-string v19, "NULLABLE"

    aput-object v19, v4, v18

    const/16 v18, 0xb

    const-string v19, "REMARKS"

    aput-object v19, v4, v18

    const/16 v18, 0xc

    const-string v19, "COLUMN_DEF"

    aput-object v19, v4, v18

    const/16 v18, 0xd

    const-string v19, "SQL_DATA_TYPE"

    aput-object v19, v4, v18

    const/16 v18, 0xe

    const-string v19, "SQL_DATETIME_SUB"

    aput-object v19, v4, v18

    const/16 v18, 0xf

    const-string v19, "CHAR_OCTET_LENGTH"

    aput-object v19, v4, v18

    const/16 v18, 0x10

    const-string v19, "ORDINAL_POSITION"

    aput-object v19, v4, v18

    const/16 v18, 0x11

    const-string v19, "IS_NULLABLE"

    aput-object v19, v4, v18

    .line 623
    .local v4, cols:[Ljava/lang/String;
    const/16 v18, 0x12

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_31e

    .line 631
    .local v17, types:[I
    new-instance v14, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v14}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 632
    .local v14, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v14, v4}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 633
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 634
    new-instance v10, LSQLite/JDBC2z/JDBCResultSet;

    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 635
    .local v10, rs:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz v11, :cond_31c

    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_31c

    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v18, v0

    if-lez v18, :cond_31c

    .line 636
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 637
    .local v6, h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_160
    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_18c

    .line 638
    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    add-int/lit8 v7, v7, 0x1

    goto :goto_160

    .line 640
    :cond_18c
    if-eqz p4, :cond_1a2

    const/16 v18, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x25

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a2

    .line 642
    const/16 p4, 0x0

    .line 644
    :cond_1a2
    const/4 v7, 0x0

    :goto_1a3
    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_31c

    .line 645
    move-object v0, v11

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 646
    .local v8, r0:[Ljava/lang/String;
    const-string v18, "name"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 647
    .local v3, col:I
    if-eqz p4, :cond_1ec

    .line 648
    aget-object v18, v8, v3

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1ec

    .line 644
    :goto_1e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a3

    .line 652
    :cond_1ec
    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 653
    .local v9, row:[Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v9, v18

    .line 654
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v9, v18

    .line 655
    const/16 v18, 0x2

    aput-object p3, v9, v18

    .line 656
    const/16 v18, 0x3

    aget-object v19, v8, v3

    aput-object v19, v9, v18

    .line 657
    const-string v18, "type"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 658
    aget-object v16, v8, v3

    .line 659
    .local v16, typeStr:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->mapSqlType(Ljava/lang/String;)I

    move-result v15

    .line 660
    .local v15, type:I
    const/16 v18, 0x4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 661
    const/16 v18, 0x5

    invoke-static {v15}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->mapTypeName(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 662
    const/16 v18, 0x6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->getD(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 663
    const/16 v18, 0x7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->getM(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 664
    const/16 v18, 0x8

    const-string v19, "10"

    aput-object v19, v9, v18

    .line 665
    const/16 v18, 0x9

    const-string v19, "0"

    aput-object v19, v9, v18

    .line 666
    const/16 v18, 0xb

    const/16 v19, 0x0

    aput-object v19, v9, v18

    .line 667
    const-string v18, "dflt_value"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 668
    const/16 v18, 0xc

    aget-object v19, v8, v3

    aput-object v19, v9, v18

    .line 669
    const/16 v18, 0xd

    const-string v19, "0"

    aput-object v19, v9, v18

    .line 670
    const/16 v18, 0xe

    const-string v19, "0"

    aput-object v19, v9, v18

    .line 671
    const/16 v18, 0xf

    const-string v19, "65536"

    aput-object v19, v9, v18

    .line 672
    const-string v18, "cid"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 673
    const/16 v18, 0x10

    aget-object v19, v8, v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 674
    const-string v18, "notnull"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 675
    const/16 v18, 0x11

    aget-object v19, v8, v3

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_316

    const-string v19, "YES"

    :goto_2f9
    aput-object v19, v9, v18

    .line 676
    const/16 v18, 0xa

    aget-object v19, v8, v3

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_319

    const-string v19, "1"

    :goto_30f
    aput-object v19, v9, v18

    .line 678
    invoke-virtual {v14, v9}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    goto/16 :goto_1e9

    .line 675
    :cond_316
    const-string v19, "NO"

    goto :goto_2f9

    .line 676
    :cond_319
    const-string v19, "0"

    goto :goto_30f

    .line 681
    .end local v3           #col:I
    .end local v6           #h:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7           #i:I
    .end local v8           #r0:[Ljava/lang/String;
    .end local v9           #row:[Ljava/lang/String;
    .end local v15           #type:I
    .end local v16           #typeStr:Ljava/lang/String;
    :cond_31c
    return-object v10

    .line 623
    nop

    :array_31e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getConnection()Ljava/sql/Connection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 24
    .parameter "primaryCatalog"
    .parameter "primarySchema"
    .parameter "primaryTable"
    .parameter "foreignCatalog"
    .parameter "foreignSchema"
    .parameter "foreignTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1094
    const/4 v9, 0x0

    .line 1095
    .local v9, rs0:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz p6, :cond_52

    const/4 v14, 0x0

    move-object/from16 v0, p6

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x25

    if-eq v14, v15, :cond_52

    .line 1096
    new-instance v10, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object v14, v0

    invoke-direct {v10, v14}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 1099
    .local v10, s0:LSQLite/JDBC2z/JDBCStatement;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object v14, v0

    iget-object v14, v14, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v15, "SELECT 1 FROM sqlite_master LIMIT 1"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_ef
    .catch LSQLite/Exception; {:try_start_19 .. :try_end_27} :catch_e2
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_27} :catch_ec

    .line 1103
    :try_start_27
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PRAGMA foreign_key_list("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p6 .. p6}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object v9, v0
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_ef
    .catch Ljava/sql/SQLException; {:try_start_27 .. :try_end_4f} :catch_ec

    .line 1109
    invoke-virtual {v10}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 1112
    .end local v10           #s0:LSQLite/JDBC2z/JDBCStatement;
    :cond_52
    const/16 v14, 0xe

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "PKTABLE_CAT"

    aput-object v15, v5, v14

    const/4 v14, 0x1

    const-string v15, "PKTABLE_SCHEM"

    aput-object v15, v5, v14

    const/4 v14, 0x2

    const-string v15, "PKTABLE_NAME"

    aput-object v15, v5, v14

    const/4 v14, 0x3

    const-string v15, "PKCOLUMN_NAME"

    aput-object v15, v5, v14

    const/4 v14, 0x4

    const-string v15, "FKTABLE_CAT"

    aput-object v15, v5, v14

    const/4 v14, 0x5

    const-string v15, "FKTABLE_SCHEM"

    aput-object v15, v5, v14

    const/4 v14, 0x6

    const-string v15, "FKTABLE_NAME"

    aput-object v15, v5, v14

    const/4 v14, 0x7

    const-string v15, "FKCOLUMN_NAME"

    aput-object v15, v5, v14

    const/16 v14, 0x8

    const-string v15, "KEY_SEQ"

    aput-object v15, v5, v14

    const/16 v14, 0x9

    const-string v15, "UPDATE_RULE"

    aput-object v15, v5, v14

    const/16 v14, 0xa

    const-string v15, "DELETE_RULE"

    aput-object v15, v5, v14

    const/16 v14, 0xb

    const-string v15, "FK_NAME"

    aput-object v15, v5, v14

    const/16 v14, 0xc

    const-string v15, "PK_NAME"

    aput-object v15, v5, v14

    const/16 v14, 0xd

    const-string v15, "DEFERRABILITY"

    aput-object v15, v5, v14

    .line 1119
    .local v5, cols:[Ljava/lang/String;
    const/16 v14, 0xe

    new-array v13, v14, [I

    fill-array-data v13, :array_f4

    .line 1126
    .local v13, types:[I
    new-instance v12, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v12}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 1127
    .local v12, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v12, v5}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v12, v13}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 1129
    new-instance v8, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v14, 0x0

    invoke-direct {v8, v12, v14}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 1130
    .local v8, rs:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz v9, :cond_e1

    iget-object v14, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v14, :cond_e1

    iget-object v14, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v14, v14, LSQLite/TableResult;->nrows:I

    if-lez v14, :cond_e1

    .line 1131
    const/4 v7, 0x0

    .line 1132
    .local v7, pktable:Ljava/lang/String;
    if-eqz p3, :cond_d7

    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x25

    if-eq v14, v15, :cond_d7

    .line 1133
    move-object/from16 v7, p3

    .line 1135
    :cond_d7
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v2, v7

    move-object v3, v9

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->internalImportedKeys(Ljava/lang/String;Ljava/lang/String;LSQLite/JDBC2z/JDBCResultSet;LSQLite/JDBC2z/TableResultX;)V

    .line 1137
    .end local v7           #pktable:Ljava/lang/String;
    :cond_e1
    return-object v8

    .line 1100
    .end local v5           #cols:[Ljava/lang/String;
    .end local v8           #rs:LSQLite/JDBC2z/JDBCResultSet;
    .end local v12           #tr:LSQLite/JDBC2z/TableResultX;
    .end local v13           #types:[I
    .restart local v10       #s0:LSQLite/JDBC2z/JDBCStatement;
    .restart local p1
    :catch_e2
    move-exception v14

    move-object v11, v14

    .line 1101
    .local v11, se:LSQLite/Exception;
    :try_start_e4
    new-instance v14, Ljava/sql/SQLException;

    const-string v15, "schema reload failed"

    invoke-direct {v14, v15}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_ef
    .catch Ljava/sql/SQLException; {:try_start_e4 .. :try_end_ec} :catch_ec

    .line 1106
    .end local v11           #se:LSQLite/Exception;
    .end local p1
    :catch_ec
    move-exception v14

    move-object v6, v14

    .line 1107
    .local v6, e:Ljava/sql/SQLException;
    :try_start_ee
    throw v6
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    .line 1109
    .end local v6           #e:Ljava/sql/SQLException;
    :catchall_ef
    move-exception v14

    invoke-virtual {v10}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v14

    .line 1119
    :array_f4
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDatabaseMajorVersion()I
    .registers 2

    .prologue
    .line 1627
    const/4 v0, 0x1

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .registers 2

    .prologue
    .line 1631
    const v0, 0x132b423

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "SQLite"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, LSQLite/Database;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 466
    const/16 v0, 0x8

    return v0
.end method

.method public getDriverMajorVersion()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public getDriverMinorVersion()I
    .registers 2

    .prologue
    .line 72
    const v0, 0x132b423

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "SQLite/JDBC"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "1.20100131"

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 11
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xe

    .line 1066
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "PKTABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "PKTABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "PKTABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "PKCOLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "FKTABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "FKTABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "FKTABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "FKCOLUMN_NAME"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "KEY_SEQ"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "UPDATE_RULE"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "DELETE_RULE"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "FK_NAME"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "PK_NAME"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "DEFERRABILITY"

    aput-object v5, v0, v4

    .line 1073
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_68

    .line 1080
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 1081
    .local v2, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v2, v3}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 1083
    new-instance v1, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 1084
    .local v1, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v1

    .line 1073
    nop

    :array_68
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, ""

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 7
    .parameter "cat"
    .parameter "schema"
    .parameter "func"
    .parameter "colpat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1677
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "cat"
    .parameter "schema"
    .parameter "func"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1671
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "\""

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 16
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1024
    new-instance v5, LSQLite/JDBC2z/JDBCStatement;

    iget-object v9, p0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    invoke-direct {v5, v9}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 1025
    .local v5, s0:LSQLite/JDBC2z/JDBCStatement;
    const/4 v4, 0x0

    .line 1028
    .local v4, rs0:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_8
    iget-object v9, p0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v9, v9, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    const-string v10, "SELECT 1 FROM sqlite_master LIMIT 1"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_c2
    .catch LSQLite/Exception; {:try_start_8 .. :try_end_12} :catch_b5
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_12} :catch_bf

    .line 1032
    :try_start_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PRAGMA foreign_key_list("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object v4, v0
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_c2
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_39} :catch_bf

    .line 1038
    invoke-virtual {v5}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 1040
    const/16 v9, 0xe

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "PKTABLE_CAT"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "PKTABLE_SCHEM"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "PKTABLE_NAME"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "PKCOLUMN_NAME"

    aput-object v10, v1, v9

    const/4 v9, 0x4

    const-string v10, "FKTABLE_CAT"

    aput-object v10, v1, v9

    const/4 v9, 0x5

    const-string v10, "FKTABLE_SCHEM"

    aput-object v10, v1, v9

    const/4 v9, 0x6

    const-string v10, "FKTABLE_NAME"

    aput-object v10, v1, v9

    const/4 v9, 0x7

    const-string v10, "FKCOLUMN_NAME"

    aput-object v10, v1, v9

    const/16 v9, 0x8

    const-string v10, "KEY_SEQ"

    aput-object v10, v1, v9

    const/16 v9, 0x9

    const-string v10, "UPDATE_RULE"

    aput-object v10, v1, v9

    const/16 v9, 0xa

    const-string v10, "DELETE_RULE"

    aput-object v10, v1, v9

    const/16 v9, 0xb

    const-string v10, "FK_NAME"

    aput-object v10, v1, v9

    const/16 v9, 0xc

    const-string v10, "PK_NAME"

    aput-object v10, v1, v9

    const/16 v9, 0xd

    const-string v10, "DEFERRABILITY"

    aput-object v10, v1, v9

    .line 1047
    .local v1, cols:[Ljava/lang/String;
    const/16 v9, 0xe

    new-array v8, v9, [I

    fill-array-data v8, :array_c8

    .line 1054
    .local v8, types:[I
    new-instance v7, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v7}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 1055
    .local v7, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v7, v1}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v7, v8}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 1057
    new-instance v3, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v9, 0x0

    invoke-direct {v3, v7, v9}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 1058
    .local v3, rs:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz v4, :cond_b4

    iget-object v9, v4, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v9, :cond_b4

    iget-object v9, v4, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v9, v9, LSQLite/TableResult;->nrows:I

    if-lez v9, :cond_b4

    .line 1059
    const/4 v9, 0x0

    invoke-direct {p0, p3, v9, v4, v7}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->internalImportedKeys(Ljava/lang/String;Ljava/lang/String;LSQLite/JDBC2z/JDBCResultSet;LSQLite/JDBC2z/TableResultX;)V

    .line 1061
    :cond_b4
    return-object v3

    .line 1029
    .end local v1           #cols:[Ljava/lang/String;
    .end local v3           #rs:LSQLite/JDBC2z/JDBCResultSet;
    .end local v7           #tr:LSQLite/JDBC2z/TableResultX;
    .end local v8           #types:[I
    .restart local p1
    :catch_b5
    move-exception v9

    move-object v6, v9

    .line 1030
    .local v6, se:LSQLite/Exception;
    :try_start_b7
    new-instance v9, Ljava/sql/SQLException;

    const-string v10, "schema reload failed"

    invoke-direct {v9, v10}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_c2
    .catch Ljava/sql/SQLException; {:try_start_b7 .. :try_end_bf} :catch_bf

    .line 1035
    .end local v6           #se:LSQLite/Exception;
    .end local p1
    :catch_bf
    move-exception v9

    move-object v2, v9

    .line 1036
    .local v2, e:Ljava/sql/SQLException;
    :try_start_c1
    throw v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    .line 1038
    .end local v2           #e:Ljava/sql/SQLException;
    :catchall_c2
    move-exception v9

    invoke-virtual {v5}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v9

    .line 1047
    nop

    :array_c8
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .registers 32
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .parameter "unique"
    .parameter "approximate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1275
    new-instance v17, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 1276
    .local v17, s0:LSQLite/JDBC2z/JDBCStatement;
    const/4 v15, 0x0

    .line 1279
    .local v15, rs0:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    move-object/from16 v23, v0

    const-string v24, "SELECT 1 FROM sqlite_master LIMIT 1"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_123
    .catch LSQLite/Exception; {:try_start_10 .. :try_end_23} :catch_114
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_23} :catch_11f

    .line 1283
    :try_start_23
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PRAGMA index_list("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object v15, v0
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_123
    .catch Ljava/sql/SQLException; {:try_start_23 .. :try_end_4f} :catch_11f

    .line 1289
    invoke-virtual/range {v17 .. v17}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 1291
    const/16 v23, 0xd

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v23, 0x0

    const-string v24, "TABLE_CAT"

    aput-object v24, v4, v23

    const/16 v23, 0x1

    const-string v24, "TABLE_SCHEM"

    aput-object v24, v4, v23

    const/16 v23, 0x2

    const-string v24, "TABLE_NAME"

    aput-object v24, v4, v23

    const/16 v23, 0x3

    const-string v24, "NON_UNIQUE"

    aput-object v24, v4, v23

    const/16 v23, 0x4

    const-string v24, "INDEX_QUALIFIER"

    aput-object v24, v4, v23

    const/16 v23, 0x5

    const-string v24, "INDEX_NAME"

    aput-object v24, v4, v23

    const/16 v23, 0x6

    const-string v24, "TYPE"

    aput-object v24, v4, v23

    const/16 v23, 0x7

    const-string v24, "ORDINAL_POSITION"

    aput-object v24, v4, v23

    const/16 v23, 0x8

    const-string v24, "COLUMN_NAME"

    aput-object v24, v4, v23

    const/16 v23, 0x9

    const-string v24, "ASC_OR_DESC"

    aput-object v24, v4, v23

    const/16 v23, 0xa

    const-string v24, "CARDINALITY"

    aput-object v24, v4, v23

    const/16 v23, 0xb

    const-string v24, "PAGES"

    aput-object v24, v4, v23

    const/16 v23, 0xc

    const-string v24, "FILTER_CONDITION"

    aput-object v24, v4, v23

    .line 1298
    .local v4, cols:[Ljava/lang/String;
    const/16 v23, 0xd

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_302

    .line 1305
    .local v21, types:[I
    new-instance v20, LSQLite/JDBC2z/TableResultX;

    invoke-direct/range {v20 .. v20}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 1306
    .local v20, tr:LSQLite/JDBC2z/TableResultX;
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {v20 .. v21}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 1308
    new-instance v14, LSQLite/JDBC2z/JDBCResultSet;

    const/16 v23, 0x0

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 1309
    .local v14, rs:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz v15, :cond_300

    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    if-eqz v23, :cond_300

    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v23, v0

    if-lez v23, :cond_300

    .line 1310
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 1311
    .local v6, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_e8
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v23, v0

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_128

    .line 1312
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    add-int/lit8 v8, v8, 0x1

    goto :goto_e8

    .line 1280
    .end local v4           #cols:[Ljava/lang/String;
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v14           #rs:LSQLite/JDBC2z/JDBCResultSet;
    .end local v20           #tr:LSQLite/JDBC2z/TableResultX;
    .end local v21           #types:[I
    .restart local p1
    :catch_114
    move-exception v23

    move-object/from16 v19, v23

    .line 1281
    .local v19, se:LSQLite/Exception;
    :try_start_117
    new-instance v23, Ljava/sql/SQLException;

    const-string v24, "schema reload failed"

    invoke-direct/range {v23 .. v24}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_11f
    .catchall {:try_start_117 .. :try_end_11f} :catchall_123
    .catch Ljava/sql/SQLException; {:try_start_117 .. :try_end_11f} :catch_11f

    .line 1286
    .end local v19           #se:LSQLite/Exception;
    .end local p1
    :catch_11f
    move-exception v23

    move-object/from16 v5, v23

    .line 1287
    .local v5, e:Ljava/sql/SQLException;
    :try_start_122
    throw v5
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_123

    .line 1289
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_123
    move-exception v23

    invoke-virtual/range {v17 .. v17}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v23

    .line 1314
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    .restart local v14       #rs:LSQLite/JDBC2z/JDBCResultSet;
    .restart local v20       #tr:LSQLite/JDBC2z/TableResultX;
    .restart local v21       #types:[I
    :cond_128
    const/4 v8, 0x0

    :goto_129
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v23, v0

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_300

    .line 1315
    move-object v0, v15

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 1316
    .local v11, r0:[Ljava/lang/String;
    const-string v23, "unique"

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1317
    .local v3, col:I
    aget-object v22, v11, v3

    .line 1318
    .local v22, uniq:Ljava/lang/String;
    const-string v23, "name"

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1319
    aget-object v9, v11, v3

    .line 1320
    .local v9, iname:Ljava/lang/String;
    if-eqz p4, :cond_187

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_187

    .line 1314
    :cond_184
    add-int/lit8 v8, v8, 0x1

    goto :goto_129

    .line 1323
    :cond_187
    new-instance v18, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 1324
    .local v18, s1:LSQLite/JDBC2z/JDBCStatement;
    const/16 v16, 0x0

    .line 1326
    .local v16, rs1:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_198
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PRAGMA index_info("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v9}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v16, v0
    :try_end_1c5
    .catchall {:try_start_198 .. :try_end_1c5} :catchall_219
    .catch Ljava/sql/SQLException; {:try_start_198 .. :try_end_1c5} :catch_214

    .line 1331
    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 1333
    :goto_1c8
    if-eqz v16, :cond_184

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    if-eqz v23, :cond_184

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v23, v0

    if-lez v23, :cond_184

    .line 1336
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 1338
    .local v7, h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1e6
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v23, v0

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_21e

    .line 1339
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e6

    .line 1329
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #k:I
    :catch_214
    move-exception v23

    .line 1331
    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2z/JDBCStatement;->close()V

    goto :goto_1c8

    :catchall_219
    move-exception v23

    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v23

    .line 1341
    .restart local v7       #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #k:I
    :cond_21e
    const/4 v10, 0x0

    :goto_21f
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v23, v0

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_184

    .line 1342
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 1343
    .local v12, r1:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1344
    .local v13, row:[Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, ""

    aput-object v24, v13, v23

    .line 1345
    const/16 v23, 0x1

    const-string v24, ""

    aput-object v24, v13, v23

    .line 1346
    const/16 v23, 0x2

    aput-object p3, v13, v23

    .line 1347
    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_293

    const/16 v24, 0x0

    move-object v0, v9

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x28

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2fd

    const-string v24, " autoindex "

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_2fd

    :cond_293
    const-string v24, "0"

    :goto_295
    aput-object v24, v13, v23

    .line 1350
    const/16 v23, 0x4

    const-string v24, ""

    aput-object v24, v13, v23

    .line 1351
    const/16 v23, 0x5

    aput-object v9, v13, v23

    .line 1352
    const/16 v23, 0x6

    const-string v24, "3"

    aput-object v24, v13, v23

    .line 1353
    const-string v23, "seqno"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1354
    const/16 v23, 0x7

    aget-object v24, v12, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v13, v23

    .line 1355
    const-string v23, "name"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1356
    const/16 v23, 0x8

    aget-object v24, v12, v3

    aput-object v24, v13, v23

    .line 1357
    const/16 v23, 0x9

    const-string v24, "A"

    aput-object v24, v13, v23

    .line 1358
    const/16 v23, 0xa

    const-string v24, "0"

    aput-object v24, v13, v23

    .line 1359
    const/16 v23, 0xb

    const-string v24, "0"

    aput-object v24, v13, v23

    .line 1360
    const/16 v23, 0xc

    const/16 v24, 0x0

    aput-object v24, v13, v23

    .line 1361
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1341
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_21f

    .line 1347
    :cond_2fd
    const-string v24, "1"

    goto :goto_295

    .line 1365
    .end local v3           #col:I
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v9           #iname:Ljava/lang/String;
    .end local v10           #k:I
    .end local v11           #r0:[Ljava/lang/String;
    .end local v12           #r1:[Ljava/lang/String;
    .end local v13           #row:[Ljava/lang/String;
    .end local v16           #rs1:LSQLite/JDBC2z/JDBCResultSet;
    .end local v18           #s1:LSQLite/JDBC2z/JDBCStatement;
    .end local v22           #uniq:Ljava/lang/String;
    :cond_300
    return-object v14

    .line 1298
    nop

    :array_302
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xf9t 0xfft 0xfft 0xfft
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getJDBCMajorVersion()I
    .registers 2

    .prologue
    .line 1635
    const/4 v0, 0x1

    return v0
.end method

.method public getJDBCMinorVersion()I
    .registers 2

    .prologue
    .line 1639
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    const/16 v0, 0x8

    return v0
.end method

.method public getMaxIndexLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, ""

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 32
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 861
    new-instance v18, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 862
    .local v18, s0:LSQLite/JDBC2z/JDBCStatement;
    const/16 v16, 0x0

    .line 865
    .local v16, rs0:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    move-object/from16 v25, v0

    const-string v26, "SELECT 1 FROM sqlite_master LIMIT 1"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_103
    .catch LSQLite/Exception; {:try_start_11 .. :try_end_24} :catch_f4
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_24} :catch_ff

    .line 869
    :try_start_24
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "PRAGMA index_list("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .end local p1
    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v16, v0
    :try_end_51
    .catchall {:try_start_24 .. :try_end_51} :catchall_103
    .catch Ljava/sql/SQLException; {:try_start_24 .. :try_end_51} :catch_ff

    .line 875
    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 877
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v25, 0x0

    const-string v26, "TABLE_CAT"

    aput-object v26, v4, v25

    const/16 v25, 0x1

    const-string v26, "TABLE_SCHEM"

    aput-object v26, v4, v25

    const/16 v25, 0x2

    const-string v26, "TABLE_NAME"

    aput-object v26, v4, v25

    const/16 v25, 0x3

    const-string v26, "COLUMN_NAME"

    aput-object v26, v4, v25

    const/16 v25, 0x4

    const-string v26, "KEY_SEQ"

    aput-object v26, v4, v25

    const/16 v25, 0x5

    const-string v26, "PK_NAME"

    aput-object v26, v4, v25

    .line 881
    .local v4, cols:[Ljava/lang/String;
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_3ea

    .line 885
    .local v23, types:[I
    new-instance v21, LSQLite/JDBC2z/TableResultX;

    invoke-direct/range {v21 .. v21}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 886
    .local v21, tr:LSQLite/JDBC2z/TableResultX;
    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 888
    new-instance v15, LSQLite/JDBC2z/JDBCResultSet;

    const/16 v25, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 889
    .local v15, rs:LSQLite/JDBC2z/JDBCResultSet;
    if-eqz v16, :cond_285

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    if-eqz v25, :cond_285

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v25, v0

    if-lez v25, :cond_285

    .line 890
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 891
    .local v6, h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_c6
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v25, v0

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_108

    .line 892
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v0, v6

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    add-int/lit8 v8, v8, 0x1

    goto :goto_c6

    .line 866
    .end local v4           #cols:[Ljava/lang/String;
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v15           #rs:LSQLite/JDBC2z/JDBCResultSet;
    .end local v21           #tr:LSQLite/JDBC2z/TableResultX;
    .end local v23           #types:[I
    .restart local p1
    :catch_f4
    move-exception v25

    move-object/from16 v20, v25

    .line 867
    .local v20, se:LSQLite/Exception;
    :try_start_f7
    new-instance v25, Ljava/sql/SQLException;

    const-string v26, "schema reload failed"

    invoke-direct/range {v25 .. v26}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_ff
    .catchall {:try_start_f7 .. :try_end_ff} :catchall_103
    .catch Ljava/sql/SQLException; {:try_start_f7 .. :try_end_ff} :catch_ff

    .line 872
    .end local v20           #se:LSQLite/Exception;
    .end local p1
    :catch_ff
    move-exception v25

    move-object/from16 v5, v25

    .line 873
    .local v5, e:Ljava/sql/SQLException;
    :try_start_102
    throw v5
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_103

    .line 875
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_103
    move-exception v25

    invoke-virtual/range {v18 .. v18}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v25

    .line 894
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    .restart local v15       #rs:LSQLite/JDBC2z/JDBCResultSet;
    .restart local v21       #tr:LSQLite/JDBC2z/TableResultX;
    .restart local v23       #types:[I
    :cond_108
    const/4 v8, 0x0

    :goto_109
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v25, v0

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_285

    .line 895
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 896
    .local v12, r0:[Ljava/lang/String;
    const-string v25, "unique"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 897
    .local v3, col:I
    aget-object v24, v12, v3

    .line 898
    .local v24, uniq:Ljava/lang/String;
    const-string v25, "name"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 899
    aget-object v9, v12, v3

    .line 900
    .local v9, iname:Ljava/lang/String;
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x30

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_167

    .line 894
    :cond_164
    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    .line 903
    :cond_167
    new-instance v19, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 904
    .local v19, s1:LSQLite/JDBC2z/JDBCStatement;
    const/16 v17, 0x0

    .line 906
    .local v17, rs1:LSQLite/JDBC2z/JDBCResultSet;
    :try_start_178
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "PRAGMA index_info("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v9}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    check-cast p1, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p1

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v17, v0
    :try_end_1a5
    .catchall {:try_start_178 .. :try_end_1a5} :catchall_1f9
    .catch Ljava/sql/SQLException; {:try_start_178 .. :try_end_1a5} :catch_1f4

    .line 911
    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 913
    :goto_1a8
    if-eqz v17, :cond_164

    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    if-eqz v25, :cond_164

    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v25, v0

    if-lez v25, :cond_164

    .line 916
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 918
    .local v7, h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1c6
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v25, v0

    move v0, v10

    move/from16 v1, v25

    if-ge v0, v1, :cond_1fe

    .line 919
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v0, v7

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c6

    .line 909
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #k:I
    :catch_1f4
    move-exception v25

    .line 911
    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2z/JDBCStatement;->close()V

    goto :goto_1a8

    :catchall_1f9
    move-exception v25

    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v25

    .line 921
    .restart local v7       #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10       #k:I
    :cond_1fe
    const/4 v10, 0x0

    :goto_1ff
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v25, v0

    move v0, v10

    move/from16 v1, v25

    if-ge v0, v1, :cond_164

    .line 922
    move-object/from16 v0, v17

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 923
    .local v13, r1:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 924
    .local v14, row:[Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, ""

    aput-object v26, v14, v25

    .line 925
    const/16 v25, 0x1

    const-string v26, ""

    aput-object v26, v14, v25

    .line 926
    const/16 v25, 0x2

    aput-object p3, v14, v25

    .line 927
    const-string v25, "name"

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 928
    const/16 v25, 0x3

    aget-object v26, v13, v3

    aput-object v26, v14, v25

    .line 929
    const-string v25, "seqno"

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 930
    const/16 v25, 0x4

    aget-object v26, v13, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v14, v25

    .line 931
    const/16 v25, 0x5

    aput-object v9, v14, v25

    .line 932
    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 921
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1ff

    .line 936
    .end local v3           #col:I
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7           #h1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    .end local v9           #iname:Ljava/lang/String;
    .end local v10           #k:I
    .end local v12           #r0:[Ljava/lang/String;
    .end local v13           #r1:[Ljava/lang/String;
    .end local v14           #row:[Ljava/lang/String;
    .end local v17           #rs1:LSQLite/JDBC2z/JDBCResultSet;
    .end local v19           #s1:LSQLite/JDBC2z/JDBCStatement;
    .end local v24           #uniq:Ljava/lang/String;
    :cond_285
    move-object/from16 v0, v21

    iget v0, v0, LSQLite/JDBC2z/TableResultX;->nrows:I

    move/from16 v25, v0

    if-lez v25, :cond_28e

    .line 978
    .end local p0
    :cond_28d
    return-object v15

    .line 939
    .restart local p0
    :cond_28e
    new-instance v19, LSQLite/JDBC2z/JDBCStatement;

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 941
    .restart local v19       #s1:LSQLite/JDBC2z/JDBCStatement;
    :try_start_29d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "PRAGMA table_info("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {p3 .. p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    .end local p0
    check-cast p0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v0, p0

    check-cast v0, LSQLite/JDBC2z/JDBCResultSet;

    move-object/from16 v16, v0
    :try_end_2ca
    .catchall {:try_start_29d .. :try_end_2ca} :catchall_31d
    .catch Ljava/sql/SQLException; {:try_start_29d .. :try_end_2ca} :catch_319

    .line 947
    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 949
    if-eqz v16, :cond_28d

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    if-eqz v25, :cond_28d

    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v25, v0

    if-lez v25, :cond_28d

    .line 950
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 951
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2eb
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    move/from16 v25, v0

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_322

    .line 952
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/TableResult;->column:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v0, v6

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    add-int/lit8 v8, v8, 0x1

    goto :goto_2eb

    .line 944
    .end local v6           #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8           #i:I
    :catch_319
    move-exception v25

    move-object/from16 v5, v25

    .line 945
    .restart local v5       #e:Ljava/sql/SQLException;
    :try_start_31c
    throw v5
    :try_end_31d
    .catchall {:try_start_31c .. :try_end_31d} :catchall_31d

    .line 947
    .end local v5           #e:Ljava/sql/SQLException;
    :catchall_31d
    move-exception v25

    invoke-virtual/range {v19 .. v19}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v25

    .line 954
    .restart local v6       #h0:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8       #i:I
    :cond_322
    const/4 v8, 0x0

    :goto_323
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, LSQLite/TableResult;->nrows:I

    move/from16 v25, v0

    move v0, v8

    move/from16 v1, v25

    if-ge v0, v1, :cond_28d

    .line 955
    move-object/from16 v0, v16

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v12, v0

    .line 956
    .restart local v12       #r0:[Ljava/lang/String;
    const-string v25, "type"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 957
    .restart local v3       #col:I
    aget-object v22, v12, v3

    .line 958
    .local v22, type:Ljava/lang/String;
    const-string v25, "integer"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_36e

    .line 954
    :cond_36b
    :goto_36b
    add-int/lit8 v8, v8, 0x1

    goto :goto_323

    .line 961
    :cond_36e
    const-string v25, "pk"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 962
    aget-object v11, v12, v3

    .line 963
    .local v11, pk:Ljava/lang/String;
    const/16 v25, 0x0

    move-object v0, v11

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x30

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_36b

    .line 966
    move-object v0, v4

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 967
    .restart local v14       #row:[Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, ""

    aput-object v26, v14, v25

    .line 968
    const/16 v25, 0x1

    const-string v26, ""

    aput-object v26, v14, v25

    .line 969
    const/16 v25, 0x2

    aput-object p3, v14, v25

    .line 970
    const-string v25, "name"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 971
    const/16 v25, 0x3

    aget-object v26, v12, v3

    aput-object v26, v14, v25

    .line 972
    const-string v25, "cid"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 973
    const/16 v25, 0x4

    aget-object v26, v12, v3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v14, v25

    .line 974
    const/16 v25, 0x5

    const-string v26, ""

    aput-object v26, v14, v25

    .line 975
    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    goto :goto_36b

    .line 881
    :array_3ea
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "procedureNamePattern"
    .parameter "columnNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 264
    const-string v0, ""

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 5
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "procedureNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultSetHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1623
    const/4 v0, 0x1

    return v0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1647
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "SELECT,UPDATE,CREATE,TABLE,VIEW,DELETE,FROM,WHERE,COMMIT,ROLLBACK,TRIGGER"

    return-object v0
.end method

.method public getSQLStateType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1643
    const/4 v0, 0x1

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 260
    const-string v0, ""

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "TABLE_SCHEM"

    aput-object v4, v0, v5

    .line 555
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, LSQLite/TableResult;

    invoke-direct {v3}, LSQLite/TableResult;-><init>()V

    .line 556
    .local v3, tr:LSQLite/TableResult;
    invoke-virtual {v3, v0}, LSQLite/TableResult;->columns([Ljava/lang/String;)V

    .line 557
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v5

    .line 558
    .local v1, row:[Ljava/lang/String;
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 559
    new-instance v2, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 560
    .local v2, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v2
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 5
    .parameter "cat"
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1652
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1612
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "typeNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1606
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, ""

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 11
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 708
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TABLE_CAT"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "TABLE_SCHEM"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "TABLE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "COLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "GRANTOR"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "GRANTEE"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "PRIVILEGE"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "IS_GRANTABLE"

    aput-object v5, v0, v4

    .line 713
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_44

    .line 718
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 719
    .local v2, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 720
    invoke-virtual {v2, v3}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 721
    new-instance v1, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 722
    .local v1, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v1

    .line 713
    nop

    :array_44
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 574
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "TABLE_TYPE"

    aput-object v4, v0, v5

    .line 575
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, LSQLite/TableResult;

    invoke-direct {v3}, LSQLite/TableResult;-><init>()V

    .line 576
    .local v3, tr:LSQLite/TableResult;
    invoke-virtual {v3, v0}, LSQLite/TableResult;->columns([Ljava/lang/String;)V

    .line 577
    new-array v1, v6, [Ljava/lang/String;

    .line 578
    .local v1, row:[Ljava/lang/String;
    const-string v4, "TABLE"

    aput-object v4, v1, v5

    .line 579
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 580
    new-array v1, v6, [Ljava/lang/String;

    .line 581
    const-string v4, "VIEW"

    aput-object v4, v1, v5

    .line 582
    invoke-virtual {v3, v1}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 583
    new-instance v2, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 584
    .local v2, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v2
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 12
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "tableNamePattern"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v3, LSQLite/JDBC2z/JDBCStatement;

    iget-object v6, p0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    invoke-direct {v3, v6}, LSQLite/JDBC2z/JDBCStatement;-><init>(LSQLite/JDBC2z/JDBCConnection;)V

    .line 515
    .local v3, s:LSQLite/JDBC2z/JDBCStatement;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "SELECT \'\' AS \'TABLE_CAT\', \'\' AS \'TABLE_SCHEM\', tbl_name AS \'TABLE_NAME\', upper(type) AS \'TABLE_TYPE\', \'\' AS REMARKS FROM sqlite_master WHERE tbl_name like "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    if-eqz p3, :cond_39

    .line 523
    invoke-static {p3}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    :goto_1a
    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    if-eqz p4, :cond_24

    array-length v6, p4

    if-nez v6, :cond_3f

    .line 529
    :cond_24
    const-string v6, "(type = \'table\' or type = \'view\')"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :goto_29
    const/4 v2, 0x0

    .line 543
    .local v2, rs:Ljava/sql/ResultSet;
    :try_start_2a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, LSQLite/JDBC2z/JDBCStatement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 544
    invoke-virtual {v3}, LSQLite/JDBC2z/JDBCStatement;->close()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_6d
    .catch Ljava/sql/SQLException; {:try_start_2a .. :try_end_35} :catch_6a

    .line 548
    invoke-virtual {v3}, LSQLite/JDBC2z/JDBCStatement;->close()V

    .line 550
    return-object v2

    .line 525
    .end local v2           #rs:Ljava/sql/ResultSet;
    :cond_39
    const-string v6, "\'%\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 531
    :cond_3f
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    const-string v5, ""

    .line 533
    .local v5, sep:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    array-length v6, p4

    if-ge v1, v6, :cond_64

    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string v6, "type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    aget-object v6, p4, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LSQLite/Shell;->sql_quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v5, " or "

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 539
    :cond_64
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 545
    .end local v1           #i:I
    .end local v5           #sep:Ljava/lang/String;
    .restart local v2       #rs:Ljava/sql/ResultSet;
    :catch_6a
    move-exception v6

    move-object v0, v6

    .line 546
    .local v0, e:Ljava/sql/SQLException;
    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 548
    .end local v0           #e:Ljava/sql/SQLException;
    :catchall_6d
    move-exception v6

    invoke-virtual {v3}, LSQLite/JDBC2z/JDBCStatement;->close()V

    throw v6
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, ""

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1141
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v3, v0

    const/16 v19, 0x0

    const-string v20, "TYPE_NAME"

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const-string v20, "DATA_TYPE"

    aput-object v20, v3, v19

    const/16 v19, 0x2

    const-string v20, "PRECISION"

    aput-object v20, v3, v19

    const/16 v19, 0x3

    const-string v20, "LITERAL_PREFIX"

    aput-object v20, v3, v19

    const/16 v19, 0x4

    const-string v20, "LITERAL_SUFFIX"

    aput-object v20, v3, v19

    const/16 v19, 0x5

    const-string v20, "CREATE_PARAMS"

    aput-object v20, v3, v19

    const/16 v19, 0x6

    const-string v20, "NULLABLE"

    aput-object v20, v3, v19

    const/16 v19, 0x7

    const-string v20, "CASE_SENSITIVE"

    aput-object v20, v3, v19

    const/16 v19, 0x8

    const-string v20, "SEARCHABLE"

    aput-object v20, v3, v19

    const/16 v19, 0x9

    const-string v20, "UNSIGNED_ATTRIBUTE"

    aput-object v20, v3, v19

    const/16 v19, 0xa

    const-string v20, "FIXED_PREC_SCALE"

    aput-object v20, v3, v19

    const/16 v19, 0xb

    const-string v20, "AUTO_INCREMENT"

    aput-object v20, v3, v19

    const/16 v19, 0xc

    const-string v20, "LOCAL_TYPE_NAME"

    aput-object v20, v3, v19

    const/16 v19, 0xd

    const-string v20, "MINIMUM_SCALE"

    aput-object v20, v3, v19

    const/16 v19, 0xe

    const-string v20, "MAXIMUM_SCALE"

    aput-object v20, v3, v19

    const/16 v19, 0xf

    const-string v20, "SQL_DATA_TYPE"

    aput-object v20, v3, v19

    const/16 v19, 0x10

    const-string v20, "SQL_DATETIME_SUB"

    aput-object v20, v3, v19

    const/16 v19, 0x11

    const-string v20, "NUM_PREC_RADIX"

    aput-object v20, v3, v19

    .line 1149
    .local v3, cols:[Ljava/lang/String;
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_646

    .line 1157
    .local v18, types:[I
    new-instance v17, LSQLite/JDBC2z/TableResultX;

    invoke-direct/range {v17 .. v17}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 1158
    .local v17, tr:LSQLite/JDBC2z/TableResultX;
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {v17 .. v18}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 1160
    new-instance v16, LSQLite/JDBC2z/JDBCResultSet;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 1161
    .local v16, rs:LSQLite/JDBC2z/JDBCResultSet;
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v19, 0x0

    const-string v20, "VARCHAR"

    aput-object v20, v4, v19

    const/16 v19, 0x1

    const-string v20, "12"

    aput-object v20, v4, v19

    const/16 v19, 0x2

    const-string v20, "65536"

    aput-object v20, v4, v19

    const/16 v19, 0x3

    const-string v20, "\'"

    aput-object v20, v4, v19

    const/16 v19, 0x4

    const-string v20, "\'"

    aput-object v20, v4, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v4, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v4, v19

    const/16 v19, 0x7

    const-string v20, "1"

    aput-object v20, v4, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v4, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0xb

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v4, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v4, v19

    const/16 v19, 0x11

    const-string v20, "0"

    aput-object v20, v4, v19

    .line 1169
    .local v4, row1:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1170
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v8, v0

    const/16 v19, 0x0

    const-string v20, "INTEGER"

    aput-object v20, v8, v19

    const/16 v19, 0x1

    const-string v20, "4"

    aput-object v20, v8, v19

    const/16 v19, 0x2

    const-string v20, "32"

    aput-object v20, v8, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v8, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v8, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v8, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v8, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v8, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v8, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v8, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0x11

    const-string v20, "2"

    aput-object v20, v8, v19

    .line 1178
    .local v8, row2:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1179
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    const/16 v19, 0x0

    const-string v20, "DOUBLE"

    aput-object v20, v9, v19

    const/16 v19, 0x1

    const-string v20, "8"

    aput-object v20, v9, v19

    const/16 v19, 0x2

    const-string v20, "16"

    aput-object v20, v9, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v9, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v9, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v9, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v9, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v9, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v9, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v9, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v9, v19

    const/16 v19, 0x11

    const-string v20, "10"

    aput-object v20, v9, v19

    .line 1187
    .local v9, row3:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1188
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    const/16 v19, 0x0

    const-string v20, "FLOAT"

    aput-object v20, v10, v19

    const/16 v19, 0x1

    const-string v20, "6"

    aput-object v20, v10, v19

    const/16 v19, 0x2

    const-string v20, "7"

    aput-object v20, v10, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v10, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v10, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v10, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v10, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v10, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v10, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v10, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v10, v19

    const/16 v19, 0x11

    const-string v20, "10"

    aput-object v20, v10, v19

    .line 1196
    .local v10, row4:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1197
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 v19, 0x0

    const-string v20, "SMALLINT"

    aput-object v20, v11, v19

    const/16 v19, 0x1

    const-string v20, "5"

    aput-object v20, v11, v19

    const/16 v19, 0x2

    const-string v20, "16"

    aput-object v20, v11, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v11, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v11, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v11, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v11, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v11, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v11, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v11, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v11, v19

    const/16 v19, 0x11

    const-string v20, "2"

    aput-object v20, v11, v19

    .line 1205
    .local v11, row5:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1206
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    const/16 v19, 0x0

    const-string v20, "BIT"

    aput-object v20, v12, v19

    const/16 v19, 0x1

    const-string v20, "-7"

    aput-object v20, v12, v19

    const/16 v19, 0x2

    const-string v20, "1"

    aput-object v20, v12, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v12, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v12, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v12, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v12, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v12, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v12, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v12, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v12, v19

    const/16 v19, 0x11

    const-string v20, "2"

    aput-object v20, v12, v19

    .line 1214
    .local v12, row6:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1215
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    const/16 v19, 0x0

    const-string v20, "TIMESTAMP"

    aput-object v20, v13, v19

    const/16 v19, 0x1

    const-string v20, "93"

    aput-object v20, v13, v19

    const/16 v19, 0x2

    const-string v20, "30"

    aput-object v20, v13, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v13, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v13, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v13, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v13, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v13, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v13, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v13, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v13, v19

    const/16 v19, 0x11

    const-string v20, "0"

    aput-object v20, v13, v19

    .line 1223
    .local v13, row7:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1224
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    const/16 v19, 0x0

    const-string v20, "DATE"

    aput-object v20, v14, v19

    const/16 v19, 0x1

    const-string v20, "91"

    aput-object v20, v14, v19

    const/16 v19, 0x2

    const-string v20, "10"

    aput-object v20, v14, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v14, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v14, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v14, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v14, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v14, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v14, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v14, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v14, v19

    const/16 v19, 0x11

    const-string v20, "0"

    aput-object v20, v14, v19

    .line 1232
    .local v14, row8:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1233
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    const/16 v19, 0x0

    const-string v20, "TIME"

    aput-object v20, v15, v19

    const/16 v19, 0x1

    const-string v20, "92"

    aput-object v20, v15, v19

    const/16 v19, 0x2

    const-string v20, "8"

    aput-object v20, v15, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v15, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v15, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v15, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v15, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v15, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v15, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v15, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v15, v19

    const/16 v19, 0x11

    const-string v20, "0"

    aput-object v20, v15, v19

    .line 1241
    .local v15, row9:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1242
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    const/16 v19, 0x0

    const-string v20, "BINARY"

    aput-object v20, v5, v19

    const/16 v19, 0x1

    const-string v20, "-2"

    aput-object v20, v5, v19

    const/16 v19, 0x2

    const-string v20, "65536"

    aput-object v20, v5, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v5, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v5, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v5, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v5, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v5, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v5, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v5, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v5, v19

    const/16 v19, 0x11

    const-string v20, "0"

    aput-object v20, v5, v19

    .line 1250
    .local v5, row10:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1251
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    const/16 v19, 0x0

    const-string v20, "VARBINARY"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    const-string v20, "-3"

    aput-object v20, v6, v19

    const/16 v19, 0x2

    const-string v20, "65536"

    aput-object v20, v6, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v6, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v6, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v6, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v6, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v6, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v6, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v6, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v6, v19

    const/16 v19, 0x11

    const-string v20, "0"

    aput-object v20, v6, v19

    .line 1259
    .local v6, row11:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1260
    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    const/16 v19, 0x0

    const-string v20, "REAL"

    aput-object v20, v7, v19

    const/16 v19, 0x1

    const-string v20, "7"

    aput-object v20, v7, v19

    const/16 v19, 0x2

    const-string v20, "16"

    aput-object v20, v7, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v7, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v7, v19

    const/16 v19, 0x5

    const/16 v20, 0x0

    aput-object v20, v7, v19

    const/16 v19, 0x6

    const-string v20, "1"

    aput-object v20, v7, v19

    const/16 v19, 0x7

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0x8

    const-string v20, "3"

    aput-object v20, v7, v19

    const/16 v19, 0x9

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0xa

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0xb

    const-string v20, "1"

    aput-object v20, v7, v19

    const/16 v19, 0xc

    const/16 v20, 0x0

    aput-object v20, v7, v19

    const/16 v19, 0xd

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0xe

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0xf

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0x10

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0x11

    const-string v20, "10"

    aput-object v20, v7, v19

    .line 1268
    .local v7, row12:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/TableResultX;->newrow([Ljava/lang/String;)Z

    .line 1269
    return-object v16

    .line 1149
    :array_646
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xf9t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0xf9t 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .registers 6
    .parameter "catalog"
    .parameter "schemaPattern"
    .parameter "typeNamePattern"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1443
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, LSQLite/JDBC2z/JDBCDatabaseMetaData;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .registers 11
    .parameter "catalog"
    .parameter "schema"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 842
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SCOPE"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "COLUMN_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "DATA_TYPE"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "TYPE_NAME"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "COLUMN_SIZE"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "BUFFER_LENGTH"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "DECIMAL_DIGITS"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "PSEUDO_COLUMN"

    aput-object v5, v0, v4

    .line 847
    .local v0, cols:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_44

    .line 852
    .local v3, types:[I
    new-instance v2, LSQLite/JDBC2z/TableResultX;

    invoke-direct {v2}, LSQLite/JDBC2z/TableResultX;-><init>()V

    .line 853
    .local v2, tr:LSQLite/JDBC2z/TableResultX;
    invoke-virtual {v2, v0}, LSQLite/JDBC2z/TableResultX;->columns([Ljava/lang/String;)V

    .line 854
    invoke-virtual {v2, v3}, LSQLite/JDBC2z/TableResultX;->sql_types([I)V

    .line 855
    new-instance v1, LSQLite/JDBC2z/JDBCResultSet;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, LSQLite/JDBC2z/JDBCResultSet;-><init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V

    .line 856
    .local v1, rs:LSQLite/JDBC2z/JDBCResultSet;
    return-object v1

    .line 847
    nop

    :array_44
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public insertsAreDetected(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method public isCatalogAtStart()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 31
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
    .line 1685
    const/4 v0, 0x0

    return v0
.end method

.method public locatorsUpdateCopy()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1600
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullPlusNonNullIsNull()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedLow()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v0, 0x0

    return v0
.end method

.method public othersInsertsAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1421
    const/4 v0, 0x0

    return v0
.end method

.method public othersUpdatesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1413
    const/4 v0, 0x0

    return v0
.end method

.method public ownDeletesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1395
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_e

    .line 1398
    :cond_c
    const/4 v0, 0x1

    .line 1400
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ownInsertsAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1404
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_e

    .line 1407
    :cond_c
    const/4 v0, 0x1

    .line 1409
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ownUpdatesAreVisible(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1386
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_e

    .line 1389
    :cond_c
    const/4 v0, 0x1

    .line 1391
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public storesLowerCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public supportsBatchUpdates()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1437
    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .registers 4
    .parameter "fromType"
    .parameter "toType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoreSQLGrammar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .registers 2

    .prologue
    .line 1588
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupBy()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .registers 2

    .prologue
    .line 1584
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNamedParameters()Z
    .registers 2

    .prologue
    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOuterJoins()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedDelete()Z
    .registers 2
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

.method public supportsPositionedUpdate()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .registers 5
    .parameter "type"
    .parameter "concurrency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1376
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_19

    .line 1379
    :cond_d
    const/16 v0, 0x3ef

    if-eq p2, v0, :cond_15

    const/16 v0, 0x3f0

    if-ne p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    .line 1382
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 1379
    goto :goto_16

    :cond_19
    move v0, v1

    .line 1382
    goto :goto_16
.end method

.method public supportsResultSetHoldability(I)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 1592
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetType(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1369
    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public supportsSavepoints()Z
    .registers 2

    .prologue
    .line 1576
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStatementPooling()Z
    .registers 2

    .prologue
    .line 1596
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1657
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredProcedures()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .registers 3
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 475
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsTransactions()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 362
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
    .line 1681
    .local p1, iface:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updatesAreDetected(I)Z
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1425
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFilePerTable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
