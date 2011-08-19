.class public LSQLite/JDBC2z/JDBCResultSet;
.super Ljava/lang/Object;
.source "JDBCResultSet.java"

# interfaces
.implements Ljava/sql/ResultSet;


# static fields
.field private static final UPD_INS:I = 0x1

.field private static final UPD_INSUPDDEL:I = 0x2

.field private static final UPD_NO:I = 0x0

.field private static final UPD_UNKNOWN:I = -0x1

.field private static final nullrepl:Z


# instance fields
.field private lastg:Ljava/lang/String;

.field private md:LSQLite/JDBC2z/JDBCResultSetMetaData;

.field private oninsrow:Z

.field private pkcoli:[I

.field private pkcols:[Ljava/lang/String;

.field private row:I

.field private rowbuf:[Ljava/lang/String;

.field private s:LSQLite/JDBC2z/JDBCStatement;

.field protected tr:LSQLite/TableResult;

.field private updatable:I

.field private uptable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    invoke-static {}, LSQLite/Database;->version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, LSQLite/JDBC2z/JDBCResultSet;->nullrepl:Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(LSQLite/TableResult;LSQLite/JDBC2z/JDBCStatement;)V
    .registers 5
    .parameter "tr"
    .parameter "s"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    .line 76
    iput-object p2, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    .line 77
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->md:LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 78
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 79
    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 80
    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    .line 82
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method private internalGetDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .registers 11
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 411
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v4, :cond_e

    if-lt p1, v6, :cond_e

    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    if-le p1, v4, :cond_2d

    .line 412
    :cond_e
    new-instance v4, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_2d
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v4, v4, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v5, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 415
    .local v3, rd:[Ljava/lang/String;
    sub-int v4, p1, v6

    aget-object v4, v3, v4

    iput-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 417
    :try_start_43
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-boolean v4, v4, LSQLite/JDBC2z/JDBCConnection;->useJulian:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_75

    if-eqz v4, :cond_60

    .line 419
    :try_start_4b
    new-instance v4, Ljava/sql/Date;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v5}, LSQLite/Database;->long_from_julian(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Date;-><init>(J)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_57

    .line 433
    :goto_56
    return-object v4

    .line 420
    :catch_57
    move-exception v4

    move-object v2, v4

    .line 421
    .local v2, ee:Ljava/lang/Exception;
    :try_start_59
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v4}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_75

    move-result-object v4

    goto :goto_56

    .line 425
    .end local v2           #ee:Ljava/lang/Exception;
    :cond_60
    :try_start_60
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v4}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_67

    move-result-object v4

    goto :goto_56

    .line 426
    :catch_67
    move-exception v4

    move-object v2, v4

    .line 427
    .restart local v2       #ee:Ljava/lang/Exception;
    :try_start_69
    new-instance v4, Ljava/sql/Date;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v5}, LSQLite/Database;->long_from_julian(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Date;-><init>(J)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_56

    .line 430
    .end local v2           #ee:Ljava/lang/Exception;
    :catch_75
    move-exception v4

    move-object v1, v4

    .line 431
    .local v1, e:Ljava/lang/Exception;
    iput-object v7, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v4, v7

    .line 433
    goto :goto_56
.end method

.method private internalGetDouble(I)Ljava/lang/Double;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 461
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 462
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 465
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 467
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 471
    :goto_49
    return-object v3

    .line 468
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 469
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 471
    goto :goto_49
.end method

.method private internalGetFloat(I)Ljava/lang/Float;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 488
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 489
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 492
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 494
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 498
    :goto_49
    return-object v3

    .line 495
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 496
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 498
    goto :goto_49
.end method

.method private internalGetInt(I)Ljava/lang/Integer;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 242
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 243
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 246
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 248
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 252
    :goto_49
    return-object v3

    .line 249
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 250
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 252
    goto :goto_49
.end method

.method private internalGetLong(I)Ljava/lang/Long;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 515
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 516
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 518
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 519
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 521
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 525
    :goto_49
    return-object v3

    .line 522
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 523
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 525
    goto :goto_49
.end method

.method private internalGetShort(I)Ljava/lang/Short;
    .registers 9
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 286
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_e

    if-lt p1, v5, :cond_e

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2d

    .line 287
    :cond_e
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_2d
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 290
    .local v2, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v2, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 292
    :try_start_43
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_4a

    move-result-object v3

    .line 296
    :goto_49
    return-object v3

    .line 293
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 294
    .local v1, e:Ljava/lang/Exception;
    iput-object v6, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v3, v6

    .line 296
    goto :goto_49
.end method

.method private internalGetTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .registers 11
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 311
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v4, :cond_e

    if-lt p1, v6, :cond_e

    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    if-le p1, v4, :cond_2d

    .line 312
    :cond_e
    new-instance v4, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    :cond_2d
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v4, v4, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v5, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 315
    .local v3, rd:[Ljava/lang/String;
    sub-int v4, p1, v6

    aget-object v4, v3, v4

    iput-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 317
    :try_start_43
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-boolean v4, v4, LSQLite/JDBC2z/JDBCConnection;->useJulian:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_75

    if-eqz v4, :cond_60

    .line 319
    :try_start_4b
    new-instance v4, Ljava/sql/Time;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v5}, LSQLite/Database;->long_from_julian(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Time;-><init>(J)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_57

    .line 333
    :goto_56
    return-object v4

    .line 320
    :catch_57
    move-exception v4

    move-object v2, v4

    .line 321
    .local v2, ee:Ljava/lang/Exception;
    :try_start_59
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v4}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_75

    move-result-object v4

    goto :goto_56

    .line 325
    .end local v2           #ee:Ljava/lang/Exception;
    :cond_60
    :try_start_60
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v4}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_67

    move-result-object v4

    goto :goto_56

    .line 326
    :catch_67
    move-exception v4

    move-object v2, v4

    .line 327
    .restart local v2       #ee:Ljava/lang/Exception;
    :try_start_69
    new-instance v4, Ljava/sql/Time;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v5}, LSQLite/Database;->long_from_julian(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Time;-><init>(J)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_56

    .line 330
    .end local v2           #ee:Ljava/lang/Exception;
    :catch_75
    move-exception v4

    move-object v1, v4

    .line 331
    .local v1, e:Ljava/lang/Exception;
    iput-object v7, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v4, v7

    .line 333
    goto :goto_56
.end method

.method private internalGetTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 11
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 360
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v4, :cond_e

    if-lt p1, v6, :cond_e

    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    if-le p1, v4, :cond_2d

    .line 361
    :cond_e
    new-instance v4, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 363
    :cond_2d
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v4, v4, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v5, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 364
    .local v3, rd:[Ljava/lang/String;
    sub-int v4, p1, v6

    aget-object v4, v3, v4

    iput-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 366
    :try_start_43
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-boolean v4, v4, LSQLite/JDBC2z/JDBCConnection;->useJulian:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_75

    if-eqz v4, :cond_60

    .line 368
    :try_start_4b
    new-instance v4, Ljava/sql/Timestamp;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v5}, LSQLite/Database;->long_from_julian(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_57

    .line 382
    :goto_56
    return-object v4

    .line 369
    :catch_57
    move-exception v4

    move-object v2, v4

    .line 370
    .local v2, ee:Ljava/lang/Exception;
    :try_start_59
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v4}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_75

    move-result-object v4

    goto :goto_56

    .line 374
    .end local v2           #ee:Ljava/lang/Exception;
    :cond_60
    :try_start_60
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v4}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_67

    move-result-object v4

    goto :goto_56

    .line 375
    :catch_67
    move-exception v4

    move-object v2, v4

    .line 376
    .restart local v2       #ee:Ljava/lang/Exception;
    :try_start_69
    new-instance v4, Ljava/sql/Timestamp;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v5}, LSQLite/Database;->long_from_julian(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_56

    .line 379
    .end local v2           #ee:Ljava/lang/Exception;
    :catch_75
    move-exception v4

    move-object v1, v4

    .line 380
    .local v1, e:Ljava/lang/Exception;
    iput-object v7, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    move-object v4, v7

    .line 382
    goto :goto_56
.end method


# virtual methods
.method public absolute(I)Z
    .registers 4
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v1

    .line 185
    :goto_6
    return v0

    .line 177
    :cond_7
    if-gez p1, :cond_10

    .line 178
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    .line 180
    :cond_10
    add-int/lit8 p1, p1, -0x1

    .line 181
    if-ltz p1, :cond_1a

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-le p1, v0, :cond_1c

    :cond_1a
    move v0, v1

    .line 182
    goto :goto_6

    .line 184
    :cond_1c
    iput p1, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 185
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public afterLast()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_5

    .line 792
    :goto_4
    return-void

    .line 791
    :cond_5
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    goto :goto_4
.end method

.method public beforeFirst()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_5

    .line 770
    :goto_4
    return-void

    .line 769
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    goto :goto_4
.end method

.method public cancelRowUpdates()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 984
    return-void
.end method

.method public clearWarnings()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1257
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    .line 1258
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    .line 1259
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 1260
    const/4 v0, 0x0

    iput-boolean v0, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    .line 1261
    iput-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 1262
    const/4 v0, -0x1

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 1263
    return-void
.end method

.method public deleteRow()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 910
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 911
    iget-boolean v4, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    if-eqz v4, :cond_10

    .line 912
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "cursor on insert row"

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 914
    :cond_10
    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1d

    .line 915
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "no primary key on table defined"

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 917
    :cond_1d
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 918
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 919
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->uptable:Ljava/lang/String;

    invoke-static {v4}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/String;

    .line 923
    .local v0, args:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3e
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_86

    .line 924
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, LSQLite/JDBC2z/JDBCResultSet;->nullrepl:Z

    if-eqz v5, :cond_83

    const-string v5, "\'%q\'"

    :goto_5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_76

    .line 927
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    :cond_76
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcoli:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    aput-object v4, v0, v2

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 925
    :cond_83
    const-string v5, "%Q"

    goto :goto_5f

    .line 932
    :cond_86
    :try_start_86
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_94
    .catch LSQLite/Exception; {:try_start_86 .. :try_end_94} :catch_97

    .line 936
    iput-object v7, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 937
    return-void

    .line 933
    :catch_97
    move-exception v4

    move-object v1, v4

    .line 934
    .local v1, e:LSQLite/Exception;
    new-instance v4, Ljava/sql/SQLException;

    invoke-virtual {v1}, LSQLite/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public fillRowbuf()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    if-nez v0, :cond_30

    .line 134
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    if-gez v0, :cond_11

    .line 135
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "cursor outside of result set"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_11
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 138
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v0, v0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v1, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    :cond_30
    return-void
.end method

.method public findColumn(Ljava/lang/String;)I
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    check-cast v0, LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 153
    .local v0, m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    invoke-virtual {v0, p1}, LSQLite/JDBC2z/JDBCResultSetMetaData;->findColByName(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public first()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    :cond_b
    move v0, v1

    .line 777
    :goto_c
    return v0

    .line 776
    :cond_d
    iput v1, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 777
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getArray(I)Ljava/sql/Array;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 716
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getArray(I)Ljava/sql/Array;

    move-result-object v1

    return-object v1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 549
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .registers 4
    .parameter "columnIndex"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .registers 5
    .parameter "columnName"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 567
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getBytes(I)[B

    move-result-object v0

    .line 583
    .local v0, data:[B
    if-eqz v0, :cond_c

    .line 584
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 586
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 592
    .local v0, data:[B
    if-eqz v0, :cond_c

    .line 593
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 595
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 698
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object v1

    return-object v1
.end method

.method public getBoolean(I)Z
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 261
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getInt(I)I

    move-result v0

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public getByte(I)B
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 604
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getByte(I)B

    move-result v1

    return v1
.end method

.method public getBytes(I)[B
    .registers 8
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 608
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_d

    if-lt p1, v5, :cond_d

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2c

    .line 609
    :cond_d
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 611
    :cond_2c
    const/4 v2, 0x0

    .line 612
    .local v2, ret:[B
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 613
    .local v1, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v1, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 614
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    if-eqz v3, :cond_4d

    .line 615
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-static {v3}, LSQLite/StringEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 617
    :cond_4d
    return-object v2
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 622
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .registers 5
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 723
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 724
    .local v0, cdata:[C
    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    .line 726
    .end local v0           #cdata:[C
    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .registers 5
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 733
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 734
    .local v0, cdata:[C
    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    .line 736
    .end local v0           #cdata:[C
    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public getClob(I)Ljava/sql/Clob;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 707
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object v1

    return-object v1
.end method

.method public getConcurrency()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 814
    const/16 v0, 0x3f0

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LSQLite/JDBC2z/JDBCResultSet;->internalGetDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .registers 4
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, LSQLite/JDBC2z/JDBCResultSet;->internalGetDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .registers 5
    .parameter "columnName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 449
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetDouble(I)Ljava/lang/Double;

    move-result-object v0

    .line 454
    .local v0, d:Ljava/lang/Double;
    if-eqz v0, :cond_b

    .line 455
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 457
    :goto_a
    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getDouble(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public getFetchDirection()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    const/16 v0, 0x3e8

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
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 481
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_b

    .line 482
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 484
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public getHoldability()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1350
    const/4 v0, 0x2

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 235
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_b

    .line 236
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 5
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetLong(I)Ljava/lang/Long;

    move-result-object v0

    .line 508
    .local v0, l:Ljava/lang/Long;
    if-eqz v0, :cond_b

    .line 509
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 511
    :goto_a
    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 530
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->md:LSQLite/JDBC2z/JDBCResultSetMetaData;

    if-nez v0, :cond_b

    .line 272
    new-instance v0, LSQLite/JDBC2z/JDBCResultSetMetaData;

    invoke-direct {v0, p0}, LSQLite/JDBC2z/JDBCResultSetMetaData;-><init>(LSQLite/JDBC2z/JDBCResultSet;)V

    iput-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->md:LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 274
    :cond_b
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->md:LSQLite/JDBC2z/JDBCResultSetMetaData;

    return-object v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .registers 3
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1419
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1424
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1425
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    return-object v1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .registers 3
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1380
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .registers 4
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1385
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v1

    return-object v1
.end method

.method public getNString(I)Ljava/lang/String;
    .registers 3
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1409
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1414
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 8
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 630
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v3, :cond_d

    if-lt p1, v5, :cond_d

    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v3, v3, LSQLite/TableResult;->ncolumns:I

    if-le p1, v3, :cond_2c

    .line 631
    :cond_d
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 633
    :cond_2c
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v3, v3, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v4, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 634
    .local v1, rd:[Ljava/lang/String;
    sub-int v3, p1, v5

    aget-object v3, v1, v3

    iput-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 635
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 636
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    instance-of v3, v3, LSQLite/JDBC2z/TableResultX;

    if-eqz v3, :cond_57

    .line 637
    iget-object v3, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    check-cast v3, LSQLite/JDBC2z/TableResultX;

    iget-object v3, v3, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    sub-int v4, p1, v5

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 664
    .end local v2           #ret:Ljava/lang/String;
    :cond_57
    :goto_57
    :pswitch_57
    return-object v2

    .line 639
    .restart local v2       #ret:Ljava/lang/String;
    :pswitch_58
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetShort(I)Ljava/lang/Short;

    move-result-object v2

    .line 640
    .local v2, ret:Ljava/lang/Short;
    goto :goto_57

    .line 642
    .local v2, ret:Ljava/lang/String;
    :pswitch_5d
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 643
    .local v2, ret:Ljava/lang/Integer;
    goto :goto_57

    .line 645
    .local v2, ret:Ljava/lang/String;
    :pswitch_62
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetDouble(I)Ljava/lang/Double;

    move-result-object v2

    .line 646
    .local v2, ret:Ljava/lang/Double;
    goto :goto_57

    .line 648
    .local v2, ret:Ljava/lang/String;
    :pswitch_67
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetFloat(I)Ljava/lang/Float;

    move-result-object v2

    .line 649
    .local v2, ret:Ljava/lang/Float;
    goto :goto_57

    .line 651
    .local v2, ret:Ljava/lang/String;
    :pswitch_6c
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetLong(I)Ljava/lang/Long;

    move-result-object v2

    .line 652
    .local v2, ret:Ljava/lang/Long;
    goto :goto_57

    .line 656
    .local v2, ret:Ljava/lang/String;
    :pswitch_71
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->getBytes(I)[B

    move-result-object v2

    .line 657
    .local v2, ret:[B
    goto :goto_57

    .line 659
    .local v2, ret:Ljava/lang/String;
    :pswitch_76
    const/4 v2, 0x0

    .local v2, ret:Ljava/lang/Object;
    goto :goto_57

    .line 637
    :pswitch_data_78
    .packed-switch -0x5
        :pswitch_6c
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_57
        :pswitch_76
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_5d
        :pswitch_58
        :pswitch_67
        :pswitch_57
        :pswitch_62
    .end packed-switch
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .registers 4
    .parameter "columnIndex"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 669
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .parameter "columnName"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 680
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getRef(I)Ljava/sql/Ref;

    move-result-object v1

    return-object v1
.end method

.method public getRow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_c

    .line 158
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "no rows"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_c
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .registers 3
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .registers 4
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1337
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object v1

    return-object v1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .registers 3
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1389
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .registers 4
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1393
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1394
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v1

    return-object v1
.end method

.method public getShort(I)S
    .registers 4
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->internalGetShort(I)Ljava/lang/Short;

    move-result-object v0

    .line 279
    .local v0, sh:Ljava/lang/Short;
    if-eqz v0, :cond_b

    .line 280
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 282
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getShort(I)S

    move-result v1

    return v1
.end method

.method public getStatement()Ljava/sql/Statement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1250
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    if-nez v0, :cond_c

    .line 1251
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "stale result set"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_c
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 7
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 220
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v2, :cond_d

    if-lt p1, v4, :cond_d

    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v2, v2, LSQLite/TableResult;->ncolumns:I

    if-le p1, v2, :cond_2c

    .line 221
    :cond_d
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_2c
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v2, v2, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v3, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 224
    .local v1, rd:[Ljava/lang/String;
    sub-int v2, p1, v4

    aget-object v2, v1, v2

    iput-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 225
    iget-object v2, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    return-object v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTime(I)Ljava/sql/Time;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LSQLite/JDBC2z/JDBCResultSet;->internalGetTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .registers 4
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, LSQLite/JDBC2z/JDBCResultSet;->internalGetTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v1

    return-object v1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .registers 5
    .parameter "columnName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v1

    return-object v1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LSQLite/JDBC2z/JDBCResultSet;->internalGetTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 4
    .parameter "columnIndex"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, LSQLite/JDBC2z/JDBCResultSet;->internalGetTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .registers 5
    .parameter "columnName"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 810
    const/16 v0, 0x3ed

    return v0
.end method

.method public getURL(I)Ljava/net/URL;
    .registers 10
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1266
    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v5, :cond_d

    if-lt p1, v7, :cond_d

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v5, v5, LSQLite/TableResult;->ncolumns:I

    if-le p1, v5, :cond_2c

    .line 1267
    :cond_d
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1269
    :cond_2c
    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v5, v5, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v6, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 1270
    .local v2, rd:[Ljava/lang/String;
    sub-int v5, p1, v7

    aget-object v5, v2, v5

    iput-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    .line 1271
    const/4 v3, 0x0

    .line 1272
    .local v3, url:Ljava/net/URL;
    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    if-nez v5, :cond_49

    move-object v4, v3

    .line 1280
    .end local v3           #url:Ljava/net/URL;
    .local v4, url:Ljava/net/URL;
    :goto_48
    return-object v4

    .line 1276
    .end local v4           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :cond_49
    :try_start_49
    new-instance v3, Ljava/net/URL;

    .end local v3           #url:Ljava/net/URL;
    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_52

    .restart local v3       #url:Ljava/net/URL;
    :goto_50
    move-object v4, v3

    .line 1280
    .end local v3           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_48

    .line 1277
    .end local v4           #url:Ljava/net/URL;
    :catch_52
    move-exception v5

    move-object v1, v5

    .line 1278
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #url:Ljava/net/URL;
    goto :goto_50
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1285
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getURL(I)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .registers 3
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 536
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 543
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->getUnicodeStream(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertRow()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 830
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 831
    iget-boolean v4, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    if-nez v4, :cond_15

    .line 832
    :cond_d
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "no insert data provided"

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    :cond_15
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    check-cast v2, LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 835
    .local v2, m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 836
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->uptable:Ljava/lang/String;

    invoke-static {v4}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    if-ge v1, v4, :cond_56

    .line 840
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, LSQLite/JDBC2z/JDBCResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_53

    .line 842
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 845
    :cond_56
    const-string v4, ") VALUES("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    const/4 v1, 0x0

    :goto_5c
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    if-ge v1, v4, :cond_7d

    .line 847
    sget-boolean v4, LSQLite/JDBC2z/JDBCResultSet;->nullrepl:Z

    if-eqz v4, :cond_7a

    const-string v4, "\'%q\'"

    :goto_68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v4, v4, LSQLite/TableResult;->ncolumns:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_77

    .line 849
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 847
    :cond_7a
    const-string v4, "%Q"

    goto :goto_68

    .line 852
    :cond_7d
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    :try_start_82
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v4, v4, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_92
    .catch LSQLite/Exception; {:try_start_82 .. :try_end_92} :catch_a2

    .line 858
    iget-object v4, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v5, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    invoke-virtual {v4, v5}, LSQLite/TableResult;->newrow([Ljava/lang/String;)Z

    .line 859
    iput-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 860
    const/4 v4, 0x0

    iput-boolean v4, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    .line 861
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->last()Z

    .line 862
    return-void

    .line 855
    :catch_a2
    move-exception v4

    move-object v0, v4

    .line 856
    .local v0, e:LSQLite/Exception;
    new-instance v4, Ljava/sql/SQLException;

    invoke-virtual {v0}, LSQLite/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isAfterLast()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    :cond_b
    move v0, v2

    .line 784
    :goto_c
    return v0

    :cond_d
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    iget-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    move v0, v2

    goto :goto_c
.end method

.method public isBeforeFirst()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    :cond_b
    move v0, v1

    .line 762
    :goto_c
    return v0

    :cond_d
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    move v0, v1

    goto :goto_c
.end method

.method public isClosed()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1354
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFirst()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 752
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v1

    .line 755
    :goto_6
    return v0

    :cond_7
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLast()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 795
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v2

    .line 798
    :goto_6
    return v0

    :cond_7
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    iget-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_12

    move v0, v2

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isUpdatable()Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v16, 0x0

    const/4 v15, 0x1

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    move v11, v0

    const/4 v12, -0x1

    if-ne v11, v12, :cond_49

    .line 88
    :try_start_b
    invoke-virtual/range {p0 .. p0}, LSQLite/JDBC2z/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v8

    check-cast v8, LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 90
    .local v8, m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v5, h:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 92
    .local v7, lastt:Ljava/lang/String;
    const/4 v6, 0x1

    .local v6, i:I
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    move-object v11, v0

    iget v11, v11, LSQLite/TableResult;->ncolumns:I

    if-gt v6, v11, :cond_2b

    .line 93
    invoke-virtual {v8, v6}, LSQLite/JDBC2z/JDBCResultSetMetaData;->getTableName(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 96
    :cond_2b
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v11

    if-gt v11, v15, :cond_33

    if-nez v7, :cond_58

    .line 97
    :cond_33
    const/4 v11, 0x0

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    .line 98
    new-instance v11, Ljava/sql/SQLException;

    const-string v12, "view or join"

    invoke-direct {v11, v12}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_41
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_41} :catch_41

    .line 122
    .end local v5           #h:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v7           #lastt:Ljava/lang/String;
    .end local v8           #m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    :catch_41
    move-exception v11

    move-object v3, v11

    .line 123
    .local v3, e:Ljava/sql/SQLException;
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    .line 126
    .end local v3           #e:Ljava/sql/SQLException;
    :cond_49
    :goto_49
    move-object/from16 v0, p0

    iget v0, v0, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    move v11, v0

    if-ge v11, v15, :cond_e1

    .line 127
    new-instance v11, Ljava/sql/SQLException;

    const-string v12, "result set not updatable"

    invoke-direct {v11, v12}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 100
    .restart local v5       #h:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6       #i:I
    .restart local v7       #lastt:Ljava/lang/String;
    .restart local v8       #m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    :cond_58
    const/4 v11, 0x1

    :try_start_59
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    .line 101
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, LSQLite/JDBC2z/JDBCResultSet;->uptable:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    move-object v11, v0

    iget-object v11, v11, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    invoke-virtual {v11}, LSQLite/JDBC2z/JDBCConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->uptable:Ljava/lang/String;

    move-object v14, v0

    invoke-interface {v11, v12, v13, v14}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v9

    check-cast v9, LSQLite/JDBC2z/JDBCResultSet;

    .line 104
    .local v9, pk:LSQLite/JDBC2z/JDBCResultSet;
    iget-object v11, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v11, v11, LSQLite/TableResult;->nrows:I

    if-lez v11, :cond_dc

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, colnotfound:Z
    iget-object v11, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v11, v11, LSQLite/TableResult;->nrows:I

    new-array v11, v11, [Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    .line 107
    iget-object v11, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v11, v11, LSQLite/TableResult;->nrows:I

    new-array v11, v11, [I

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, LSQLite/JDBC2z/JDBCResultSet;->pkcoli:[I

    .line 108
    const/4 v6, 0x0

    :goto_99
    iget-object v11, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v11, v11, LSQLite/TableResult;->nrows:I

    if-ge v6, v11, :cond_d4

    .line 109
    iget-object v11, v9, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v11, v11, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v11, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 110
    .local v10, rd:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x3

    aget-object v12, v10, v12

    aput-object v12, v11, v6
    :try_end_b7
    .catch Ljava/sql/SQLException; {:try_start_59 .. :try_end_b7} :catch_41

    .line 112
    :try_start_b7
    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->pkcoli:[I

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    move-object v12, v0

    aget-object v12, v12, v6

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v12, v15

    aput v12, v11, v6
    :try_end_cd
    .catch Ljava/sql/SQLException; {:try_start_b7 .. :try_end_cd} :catch_d0

    .line 108
    :goto_cd
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 113
    :catch_d0
    move-exception v11

    move-object v4, v11

    .line 114
    .local v4, ee:Ljava/sql/SQLException;
    const/4 v2, 0x1

    goto :goto_cd

    .line 117
    .end local v4           #ee:Ljava/sql/SQLException;
    .end local v10           #rd:[Ljava/lang/String;
    :cond_d4
    if-nez v2, :cond_dc

    .line 118
    const/4 v11, 0x2

    :try_start_d7
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    .line 121
    .end local v2           #colnotfound:Z
    :cond_dc
    invoke-virtual {v9}, LSQLite/JDBC2z/JDBCResultSet;->close()V
    :try_end_df
    .catch Ljava/sql/SQLException; {:try_start_d7 .. :try_end_df} :catch_41

    goto/16 :goto_49

    .line 129
    .end local v5           #h:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v7           #lastt:Ljava/lang/String;
    .end local v8           #m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    .end local v9           #pk:LSQLite/JDBC2z/JDBCResultSet;
    :cond_e1
    return v15
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
    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method public last()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 802
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_b

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    if-gtz v0, :cond_d

    .line 803
    :cond_b
    const/4 v0, 0x0

    .line 806
    :goto_c
    return v0

    .line 805
    :cond_d
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    sub-int/2addr v0, v1

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    move v0, v1

    .line 806
    goto :goto_c
.end method

.method public moveToCurrentRow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 995
    iget-boolean v0, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    if-eqz v0, :cond_a

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 999
    :cond_a
    return-void
.end method

.method public moveToInsertRow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 988
    iget-boolean v0, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    if-nez v0, :cond_12

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    .line 990
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->nrows:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 992
    :cond_12
    return-void
.end method

.method public next()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v2

    .line 148
    :goto_6
    return v0

    .line 147
    :cond_7
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 148
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    iget-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    if-ge v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_6

    :cond_17
    move v0, v2

    goto :goto_6
.end method

.method public previous()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_d

    .line 165
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "result set already closed."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_d
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    if-ltz v0, :cond_16

    .line 168
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    sub-int/2addr v0, v1

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 170
    :cond_16
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    if-ltz v0, :cond_1c

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public refreshRow()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 940
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 941
    iget-boolean v8, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    if-eqz v8, :cond_10

    .line 942
    new-instance v8, Ljava/sql/SQLException;

    const-string v9, "cursor on insert row"

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 944
    :cond_10
    iget v8, p0, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1d

    .line 945
    new-instance v8, Ljava/sql/SQLException;

    const-string v9, "no primary key on table defined"

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 947
    :cond_1d
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v4

    check-cast v4, LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 948
    .local v4, m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v8, v8, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v9, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 949
    .local v5, rd:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 950
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v8, "SELECT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3e
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v8, v8, LSQLite/TableResult;->ncolumns:I

    if-ge v3, v8, :cond_60

    .line 952
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, LSQLite/JDBC2z/JDBCResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 953
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v8, v8, LSQLite/TableResult;->ncolumns:I

    sub-int/2addr v8, v10

    if-ge v3, v8, :cond_5d

    .line 954
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 957
    :cond_60
    const-string v8, " FROM "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 958
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->uptable:Ljava/lang/String;

    invoke-static {v8}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 959
    const-string v8, " WHERE "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 960
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v8, v8

    new-array v1, v8, [Ljava/lang/String;

    .line 961
    .local v1, args:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_79
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_be

    .line 962
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v8}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, LSQLite/JDBC2z/JDBCResultSet;->nullrepl:Z

    if-eqz v9, :cond_bb

    const-string v9, "\'%q\'"

    :goto_9a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v8, v8

    sub-int/2addr v8, v10

    if-ge v3, v8, :cond_b0

    .line 965
    const-string v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    :cond_b0
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcoli:[I

    aget v8, v8, v3

    aget-object v8, v5, v8

    aput-object v8, v1, v3

    .line 961
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 963
    :cond_bb
    const-string v9, "%Q"

    goto :goto_9a

    .line 969
    :cond_be
    const/4 v7, 0x0

    .line 971
    .local v7, trnew:LSQLite/TableResult;
    :try_start_bf
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v8, v8, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v8, v8, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, LSQLite/JDBC2z/DatabaseX;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    :try_end_cc
    .catch LSQLite/Exception; {:try_start_bf .. :try_end_cc} :catch_d9

    move-result-object v7

    .line 975
    iget v8, v7, LSQLite/TableResult;->nrows:I

    if-eq v8, v10, :cond_e5

    .line 976
    new-instance v8, Ljava/sql/SQLException;

    const-string v9, "wrong size of result set"

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 972
    :catch_d9
    move-exception v8

    move-object v2, v8

    .line 973
    .local v2, e:LSQLite/Exception;
    new-instance v8, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 978
    .end local v2           #e:LSQLite/Exception;
    :cond_e5
    const/4 v8, 0x0

    iput-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 979
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v8, v8, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget-object v9, v7, LSQLite/TableResult;->rows:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    iget v10, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v8, v9, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 980
    return-void
.end method

.method public relative(I)Z
    .registers 5
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-nez v0, :cond_7

    move v0, v2

    .line 196
    :goto_6
    return v0

    .line 192
    :cond_7
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_15

    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    add-int/2addr v0, p1

    iget-object v1, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v1, v1, LSQLite/TableResult;->nrows:I

    if-lt v0, v1, :cond_17

    :cond_15
    move v0, v2

    .line 193
    goto :goto_6

    .line 195
    :cond_17
    iget v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    add-int/2addr v0, p1

    iput v0, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    .line 196
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public rowDeleted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public rowInserted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public rowUpdated()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public setFetchDirection(I)V
    .registers 4
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_c

    .line 201
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "only forward fetch direction supported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_c
    return-void
.end method

.method public setFetchSize(I)V
    .registers 4
    .parameter "fsize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 211
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "fetch size must be 1"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_b
    return-void
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
    .line 1597
    .local p1, iface:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateArray(ILjava/sql/Array;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1322
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1328
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateArray(ILjava/sql/Array;)V

    .line 1329
    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1532
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .registers 5
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1120
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1444
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1538
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateAsciiStream(ILjava/io/InputStream;)V

    .line 1539
    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .registers 5
    .parameter "colName"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1220
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3}, LSQLite/JDBC2z/JDBCResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V

    .line 1221
    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1450
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1451
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    .line 1452
    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .registers 4
    .parameter "colIndex"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1065
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .registers 4
    .parameter "colName"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1185
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V

    .line 1186
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1543
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .registers 5
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1457
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1549
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateBinaryStream(ILjava/io/InputStream;)V

    .line 1550
    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .registers 5
    .parameter "colName"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1227
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3}, LSQLite/JDBC2z/JDBCResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V

    .line 1228
    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1463
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1464
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    .line 1465
    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1565
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1483
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1300
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1571
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateBlob(ILjava/io/InputStream;)V

    .line 1572
    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1489
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1490
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateBlob(ILjava/io/InputStream;J)V

    .line 1491
    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1305
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1306
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateBlob(ILjava/sql/Blob;)V

    .line 1307
    return-void
.end method

.method public updateBoolean(IZ)V
    .registers 4
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1011
    if-eqz p2, :cond_8

    const-string v0, "1"

    :goto_4
    invoke-virtual {p0, p1, v0}, LSQLite/JDBC2z/JDBCResultSet;->updateString(ILjava/lang/String;)V

    .line 1012
    return-void

    .line 1011
    :cond_8
    const-string v0, "0"

    goto :goto_4
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .registers 4
    .parameter "colName"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1149
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateBoolean(IZ)V

    .line 1150
    return-void
.end method

.method public updateByte(IB)V
    .registers 4
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1015
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateByte(Ljava/lang/String;B)V
    .registers 4
    .parameter "colName"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1154
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateByte(IB)V

    .line 1155
    return-void
.end method

.method public updateBytes(I[B)V
    .registers 6
    .parameter "colIndex"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1078
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1079
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1080
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1083
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v0, v0, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v0}, LSQLite/JDBC2z/DatabaseX;->is3()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1084
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2}, LSQLite/StringEncoder;->encodeX([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1088
    :goto_48
    return-void

    .line 1086
    :cond_49
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2}, LSQLite/StringEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_48
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .registers 4
    .parameter "colName"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1195
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateBytes(I[B)V

    .line 1196
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1554
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .registers 5
    .parameter "colIndex"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1470
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1560
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateCharacterStream(ILjava/io/Reader;)V

    .line 1561
    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .registers 5
    .parameter "colName"
    .parameter "in"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1234
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3}, LSQLite/JDBC2z/JDBCResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 1235
    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1476
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1477
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    .line 1478
    return-void
.end method

.method public updateClob(ILjava/io/Reader;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1576
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1496
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1311
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1581
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1582
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateClob(ILjava/io/Reader;)V

    .line 1583
    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1503
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateClob(ILjava/io/Reader;J)V

    .line 1504
    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1317
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateClob(ILjava/sql/Clob;)V

    .line 1318
    return-void
.end method

.method public updateDate(ILjava/sql/Date;)V
    .registers 6
    .parameter "colIndex"
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1091
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1092
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1093
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1096
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-virtual {p2}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1097
    return-void
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .registers 4
    .parameter "colName"
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1201
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateDate(ILjava/sql/Date;)V

    .line 1202
    return-void
.end method

.method public updateDouble(ID)V
    .registers 7
    .parameter "colIndex"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1055
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1056
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1057
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1060
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1061
    return-void
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .registers 5
    .parameter "colName"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1179
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3}, LSQLite/JDBC2z/JDBCResultSet;->updateDouble(ID)V

    .line 1180
    return-void
.end method

.method public updateFloat(IF)V
    .registers 6
    .parameter "colIndex"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1046
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1047
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1048
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1051
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1052
    return-void
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .registers 4
    .parameter "colName"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1174
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateFloat(IF)V

    .line 1175
    return-void
.end method

.method public updateInt(II)V
    .registers 6
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1028
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1029
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1030
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1033
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1034
    return-void
.end method

.method public updateInt(Ljava/lang/String;I)V
    .registers 4
    .parameter "colName"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1164
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateInt(II)V

    .line 1165
    return-void
.end method

.method public updateLong(IJ)V
    .registers 7
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1037
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1038
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1039
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1042
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1043
    return-void
.end method

.method public updateLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "colName"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1169
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3}, LSQLite/JDBC2z/JDBCResultSet;->updateLong(IJ)V

    .line 1170
    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1521
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1527
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateNCharacterStream(ILjava/io/Reader;)V

    .line 1528
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1438
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    .line 1439
    return-void
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1587
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .registers 6
    .parameter "colIndex"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1509
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .registers 4
    .parameter "colIndex"
    .parameter "nclob"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1370
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1592
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1593
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateNClob(ILjava/io/Reader;)V

    .line 1594
    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .registers 6
    .parameter "colName"
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1516
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3, p4}, LSQLite/JDBC2z/JDBCResultSet;->updateNClob(ILjava/io/Reader;J)V

    .line 1517
    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .registers 4
    .parameter "colName"
    .parameter "nclob"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1376
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateNClob(ILjava/sql/NClob;)V

    .line 1377
    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .registers 4
    .parameter "colIndex"
    .parameter "nString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1359
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "colName"
    .parameter "nString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1364
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1365
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateNString(ILjava/lang/String;)V

    .line 1366
    return-void
.end method

.method public updateNull(I)V
    .registers 5
    .parameter "colIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1002
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1003
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1004
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1007
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1008
    return-void
.end method

.method public updateNull(Ljava/lang/String;)V
    .registers 3
    .parameter "colName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1144
    .local v0, col:I
    invoke-virtual {p0, v0}, LSQLite/JDBC2z/JDBCResultSet;->updateNull(I)V

    .line 1145
    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .registers 4
    .parameter "colIndex"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LSQLite/JDBC2z/JDBCResultSet;->updateString(ILjava/lang/String;)V

    .line 1135
    return-void
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .registers 5
    .parameter "colIndex"
    .parameter "obj"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LSQLite/JDBC2z/JDBCResultSet;->updateString(ILjava/lang/String;)V

    .line 1140
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "colName"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1240
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateObject(ILjava/lang/Object;)V

    .line 1241
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5
    .parameter "colName"
    .parameter "obj"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1245
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1246
    .local v0, col:I
    invoke-virtual {p0, v0, p2, p3}, LSQLite/JDBC2z/JDBCResultSet;->updateObject(ILjava/lang/Object;I)V

    .line 1247
    return-void
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1289
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1295
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateRef(ILjava/sql/Ref;)V

    .line 1296
    return-void
.end method

.method public updateRow()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 865
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 866
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    if-nez v8, :cond_12

    .line 867
    new-instance v8, Ljava/sql/SQLException;

    const-string v9, "no update data provided"

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 869
    :cond_12
    iget-boolean v8, p0, LSQLite/JDBC2z/JDBCResultSet;->oninsrow:Z

    if-eqz v8, :cond_1e

    .line 870
    new-instance v8, Ljava/sql/SQLException;

    const-string v9, "cursor on insert row"

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 872
    :cond_1e
    iget v8, p0, LSQLite/JDBC2z/JDBCResultSet;->updatable:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2b

    .line 873
    new-instance v8, Ljava/sql/SQLException;

    const-string v9, "no primary key on table defined"

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 875
    :cond_2b
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget-object v8, v8, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iget v9, p0, LSQLite/JDBC2z/JDBCResultSet;->row:I

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 876
    .local v6, rd:[Ljava/lang/String;
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v5

    check-cast v5, LSQLite/JDBC2z/JDBCResultSetMetaData;

    .line 877
    .local v5, m:LSQLite/JDBC2z/JDBCResultSetMetaData;
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v8, v8, LSQLite/TableResult;->ncolumns:I

    iget-object v9, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v9, v9

    add-int/2addr v8, v9

    new-array v1, v8, [Ljava/lang/String;

    .line 878
    .local v1, args:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 879
    .local v7, sb:Ljava/lang/StringBuffer;
    const-string v8, "UPDATE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 880
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->uptable:Ljava/lang/String;

    invoke-static {v8}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    const-string v8, " SET "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    const/4 v3, 0x0

    .local v3, i:I
    :goto_64
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v8, v8, LSQLite/TableResult;->ncolumns:I

    if-ge v3, v8, :cond_ab

    .line 884
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8}, LSQLite/JDBC2z/JDBCResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, LSQLite/JDBC2z/JDBCResultSet;->nullrepl:Z

    if-eqz v9, :cond_a8

    const-string v9, "\'%q\'"

    :goto_88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v8, v8, LSQLite/TableResult;->ncolumns:I

    sub-int/2addr v8, v10

    if-ge v3, v8, :cond_9f

    .line 887
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    :cond_9f
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    aget-object v8, v8, v3

    aput-object v8, v1, v3

    .line 883
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 885
    :cond_a8
    const-string v9, "%Q"

    goto :goto_88

    .line 891
    :cond_ab
    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    const/4 v4, 0x0

    .local v4, k:I
    :goto_b1
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_f8

    .line 893
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v8}, LSQLite/Shell;->sql_quote_dbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, LSQLite/JDBC2z/JDBCResultSet;->nullrepl:Z

    if-eqz v9, :cond_f5

    const-string v9, "\'%q\'"

    :goto_d2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 895
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcols:[Ljava/lang/String;

    array-length v8, v8

    sub-int/2addr v8, v10

    if-ge v4, v8, :cond_e8

    .line 896
    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    :cond_e8
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->pkcoli:[I

    aget v8, v8, v4

    aget-object v8, v6, v8

    aput-object v8, v1, v3

    .line 892
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 894
    :cond_f5
    const-string v9, "%Q"

    goto :goto_d2

    .line 901
    :cond_f8
    :try_start_f8
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->s:LSQLite/JDBC2z/JDBCStatement;

    iget-object v8, v8, LSQLite/JDBC2z/JDBCStatement;->conn:LSQLite/JDBC2z/JDBCConnection;

    iget-object v8, v8, LSQLite/JDBC2z/JDBCConnection;->db:LSQLite/JDBC2z/DatabaseX;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v1}, LSQLite/JDBC2z/DatabaseX;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_106
    .catch LSQLite/Exception; {:try_start_f8 .. :try_end_106} :catch_111

    .line 905
    iget-object v8, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    iget-object v9, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    iput-object v12, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    .line 907
    return-void

    .line 902
    :catch_111
    move-exception v8

    move-object v2, v8

    .line 903
    .local v2, e:LSQLite/Exception;
    new-instance v8, Ljava/sql/SQLException;

    invoke-virtual {v2}, LSQLite/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .registers 4
    .parameter "colIndex"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .registers 4
    .parameter "colName"
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1346
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateRowId(ILjava/sql/RowId;)V

    .line 1347
    return-void
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .registers 4
    .parameter "colIndex"
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1399
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .registers 4
    .parameter "colName"
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1405
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V

    .line 1406
    return-void
.end method

.method public updateShort(IS)V
    .registers 6
    .parameter "colIndex"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1019
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1020
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1021
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1024
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1025
    return-void
.end method

.method public updateShort(Ljava/lang/String;S)V
    .registers 4
    .parameter "colName"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1159
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateShort(IS)V

    .line 1160
    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .registers 6
    .parameter "colIndex"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1069
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1070
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1071
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1074
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 1075
    return-void
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "colName"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1189
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1190
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateString(ILjava/lang/String;)V

    .line 1191
    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .registers 6
    .parameter "colIndex"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1100
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1101
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1102
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1105
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-virtual {p2}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1106
    return-void
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .registers 4
    .parameter "colName"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1206
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1207
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateTime(ILjava/sql/Time;)V

    .line 1208
    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .registers 6
    .parameter "colIndex"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1110
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->isUpdatable()Z

    .line 1111
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    if-eqz v0, :cond_10

    if-lt p1, v1, :cond_10

    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->tr:LSQLite/TableResult;

    iget v0, v0, LSQLite/TableResult;->ncolumns:I

    if-le p1, v0, :cond_2f

    .line 1112
    :cond_10
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_2f
    invoke-virtual {p0}, LSQLite/JDBC2z/JDBCResultSet;->fillRowbuf()V

    .line 1115
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->rowbuf:[Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-virtual {p2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1116
    return-void
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .registers 4
    .parameter "colName"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p0, p1}, LSQLite/JDBC2z/JDBCResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    .line 1213
    .local v0, col:I
    invoke-virtual {p0, v0, p2}, LSQLite/JDBC2z/JDBCResultSet;->updateTimestamp(ILjava/sql/Timestamp;)V

    .line 1214
    return-void
.end method

.method public wasNull()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, LSQLite/JDBC2z/JDBCResultSet;->lastg:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
