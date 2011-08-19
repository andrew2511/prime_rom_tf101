.class public LSQLite/JDBC2z/TableResultX;
.super LSQLite/TableResult;
.source "TableResultX.java"


# instance fields
.field public sql_type:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 10
    invoke-direct {p0}, LSQLite/TableResult;-><init>()V

    .line 11
    iget v1, p0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    new-array v1, v1, [I

    iput-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    .line 12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    if-ge v0, v1, :cond_17

    .line 13
    iget-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    const/16 v2, 0xc

    aput v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 15
    :cond_17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "maxrows"

    .prologue
    .line 18
    invoke-direct {p0, p1}, LSQLite/TableResult;-><init>(I)V

    .line 19
    iget v1, p0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    new-array v1, v1, [I

    iput-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    if-ge v0, v1, :cond_17

    .line 21
    iget-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    const/16 v2, 0xc

    aput v2, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 23
    :cond_17
    return-void
.end method

.method public constructor <init>(LSQLite/TableResult;)V
    .registers 5
    .parameter "tr"

    .prologue
    .line 25
    invoke-direct {p0}, LSQLite/TableResult;-><init>()V

    .line 26
    iget-object v1, p1, LSQLite/TableResult;->column:[Ljava/lang/String;

    iput-object v1, p0, LSQLite/JDBC2z/TableResultX;->column:[Ljava/lang/String;

    .line 27
    iget-object v1, p1, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iput-object v1, p0, LSQLite/JDBC2z/TableResultX;->rows:Ljava/util/Vector;

    .line 28
    iget v1, p1, LSQLite/TableResult;->ncolumns:I

    iput v1, p0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    .line 29
    iget v1, p1, LSQLite/TableResult;->nrows:I

    iput v1, p0, LSQLite/JDBC2z/TableResultX;->nrows:I

    .line 30
    iget-object v1, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    iput-object v1, p0, LSQLite/JDBC2z/TableResultX;->types:[Ljava/lang/String;

    .line 31
    iget v1, p1, LSQLite/TableResult;->maxrows:I

    iput v1, p0, LSQLite/JDBC2z/TableResultX;->maxrows:I

    .line 32
    iget v1, p1, LSQLite/TableResult;->ncolumns:I

    new-array v1, v1, [I

    iput-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    iget v1, p0, LSQLite/JDBC2z/TableResultX;->ncolumns:I

    if-ge v0, v1, :cond_2f

    .line 34
    iget-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    const/16 v2, 0xc

    aput v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 36
    :cond_2f
    iget-object v1, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 37
    const/4 v0, 0x0

    :goto_34
    iget-object v1, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_48

    .line 38
    iget-object v1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    iget-object v2, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, LSQLite/JDBC2z/JDBCDatabaseMetaData;->mapSqlType(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 41
    :cond_48
    return-void
.end method


# virtual methods
.method sql_types([I)V
    .registers 2
    .parameter "types"

    .prologue
    .line 44
    iput-object p1, p0, LSQLite/JDBC2z/TableResultX;->sql_type:[I

    .line 45
    return-void
.end method
