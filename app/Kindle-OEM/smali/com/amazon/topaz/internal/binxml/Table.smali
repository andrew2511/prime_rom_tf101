.class public final Lcom/amazon/topaz/internal/binxml/Table;
.super Ljava/lang/Object;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;
    }
.end annotation


# instance fields
.field private columns:[[I

.field private height:I

.field private idToColumnIndexMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nameIDMapping:Lcom/amazon/topaz/internal/binxml/Dictionary;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;)V
    .locals 2
    .parameter "dict"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Table;->nameIDMapping:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->idToColumnIndexMapping:Ljava/util/Map;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I

    .line 88
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->idToColumnIndexMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deserialize(Lcom/amazon/topaz/internal/binxml/Deserializer;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 97
    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->skipSentinel(I)V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Table;->clear()V

    .line 100
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v0

    .line 101
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    .line 102
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v2

    .line 104
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Table;->idToColumnIndexMapping:Ljava/util/Map;

    new-instance v4, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {v4, v2}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readVector()[I

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    aput-object v2, v3, v1

    .line 107
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I

    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 108
    new-instance v0, Lcom/amazon/topaz/exception/MismatchedColumnSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/topaz/exception/MismatchedColumnSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    array-length v2, v2

    iput v2, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Table;->getAllocSize()I

    .line 115
    return-void
.end method

.method public declared-synchronized getAllocSize()I
    .locals 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    if-eqz v0, :cond_0

    .line 255
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    .line 259
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table;->idToColumnIndexMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    .local v0, found:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 233
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getColumn(I)[I
    .locals 1
    .parameter "col"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getColumn(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)[I
    .locals 1
    .parameter "colID"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/binxml/Table;->getColumn(I)[I

    move-result-object v0

    return-object v0
.end method

.method getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->nameIDMapping:Lcom/amazon/topaz/internal/binxml/Dictionary;

    return-object v0
.end method

.method public declared-synchronized getInt(II)I
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I
    .locals 1
    .parameter "row"
    .parameter "colID"

    .prologue
    .line 179
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v0

    .line 205
    .local v0, index:I
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table;->nameIDMapping:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;
    .locals 1
    .parameter "row"
    .parameter "colID"

    .prologue
    .line 219
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/internal/binxml/Table;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAsEmpty([Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 124
    array-length v0, p1

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    .line 125
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table;->idToColumnIndexMapping:Ljava/util/Map;

    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    new-array v2, p2, [I

    aput-object v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public iterator()Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;-><init>(Lcom/amazon/topaz/internal/binxml/Table;I)V

    return-object v0
.end method

.method public declared-synchronized setValue(III)V
    .locals 1
    .parameter "row"
    .parameter "column"
    .parameter "value"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    aget-object v0, v0, p2

    aput p3, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;I)V
    .locals 2
    .parameter "row"
    .parameter "colID"
    .parameter "value"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->columns:[[I

    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    aget-object v0, v0, v1

    aput p3, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/amazon/topaz/internal/binxml/Table;->height:I

    return v0
.end method
