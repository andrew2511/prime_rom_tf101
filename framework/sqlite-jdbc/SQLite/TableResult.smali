.class public LSQLite/TableResult;
.super Ljava/lang/Object;
.source "TableResult.java"

# interfaces
.implements LSQLite/Callback;


# instance fields
.field public atmaxrows:Z

.field public column:[Ljava/lang/String;

.field public maxrows:I

.field public ncolumns:I

.field public nrows:I

.field public rows:Ljava/util/Vector;

.field public types:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, LSQLite/TableResult;->maxrows:I

    .line 79
    invoke-virtual {p0}, LSQLite/TableResult;->clear()V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "maxrows"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, LSQLite/TableResult;->maxrows:I

    .line 87
    iput p1, p0, LSQLite/TableResult;->maxrows:I

    .line 88
    invoke-virtual {p0}, LSQLite/TableResult;->clear()V

    .line 89
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 96
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/TableResult;->types:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    .line 99
    iput v1, p0, LSQLite/TableResult;->nrows:I

    iput v1, p0, LSQLite/TableResult;->ncolumns:I

    .line 100
    iput-boolean v1, p0, LSQLite/TableResult;->atmaxrows:Z

    .line 101
    return-void
.end method

.method public columns([Ljava/lang/String;)V
    .registers 3
    .parameter "coldata"

    .prologue
    .line 108
    iput-object p1, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    .line 109
    iget-object v0, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, LSQLite/TableResult;->ncolumns:I

    .line 110
    return-void
.end method

.method public newrow([Ljava/lang/String;)Z
    .registers 5
    .parameter "rowdata"

    .prologue
    const/4 v2, 0x1

    .line 125
    if-eqz p1, :cond_1c

    .line 126
    iget v0, p0, LSQLite/TableResult;->maxrows:I

    if-lez v0, :cond_11

    iget v0, p0, LSQLite/TableResult;->nrows:I

    iget v1, p0, LSQLite/TableResult;->maxrows:I

    if-lt v0, v1, :cond_11

    .line 127
    iput-boolean v2, p0, LSQLite/TableResult;->atmaxrows:Z

    move v0, v2

    .line 133
    :goto_10
    return v0

    .line 130
    :cond_11
    iget-object v0, p0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    iget v0, p0, LSQLite/TableResult;->nrows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSQLite/TableResult;->nrows:I

    .line 133
    :cond_1c
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x7c

    const/16 v6, 0xa

    .line 141
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget v5, p0, LSQLite/TableResult;->ncolumns:I

    if-ge v1, v5, :cond_24

    .line 144
    iget-object v5, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_1f

    const-string v5, "NULL"

    :goto_16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 144
    :cond_1f
    iget-object v5, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v5, v5, v1

    goto :goto_16

    .line 147
    :cond_24
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    const/4 v1, 0x0

    :goto_28
    iget v5, p0, LSQLite/TableResult;->nrows:I

    if-ge v1, v5, :cond_55

    .line 150
    iget-object v5, p0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 151
    .local v3, row:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_39
    iget v5, p0, LSQLite/TableResult;->ncolumns:I

    if-ge v2, v5, :cond_4f

    .line 152
    aget-object v5, v3, v2

    if-nez v5, :cond_4c

    const-string v5, "NULL"

    :goto_43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 152
    :cond_4c
    aget-object v5, v3, v2

    goto :goto_43

    .line 155
    :cond_4f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 157
    .end local v2           #k:I
    .end local v3           #row:[Ljava/lang/String;
    :cond_55
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public types([Ljava/lang/String;)V
    .registers 2
    .parameter "types"

    .prologue
    .line 117
    iput-object p1, p0, LSQLite/TableResult;->types:[Ljava/lang/String;

    .line 118
    return-void
.end method
