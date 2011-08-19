.class public Lcom/google/android/apps/books/util/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"

# interfaces
.implements Lcom/google/android/apps/books/util/pool/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/util/pool/Poolable",
        "<",
        "Lcom/google/android/apps/books/util/SelectionBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private mNext:Lcom/google/android/apps/books/util/SelectionBuilder;

.field private final mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelection:Ljava/lang/StringBuilder;

.field private final mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    return-void
.end method

.method private mapColumns([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "columns"

    .prologue
    .line 176
    move-object v1, p1

    .line 177
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, target:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 180
    if-ne v1, p1, :cond_0

    .line 181
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 183
    .restart local v1       #result:[Ljava/lang/String;
    :cond_0
    aput-object v2, v1, v0

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v2           #target:Ljava/lang/String;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public varargs append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 1
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3
    .parameter "db"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    const-string v1, "Table not specified"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 1
    .parameter "db"
    .parameter "table"

    .prologue
    .line 241
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method public getNextPoolable()Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mNext:Lcom/google/android/apps/books/util/SelectionBuilder;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getNextPoolable()Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 3
    .parameter "fromColumn"
    .parameter "toClause"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object p0
.end method

.method public mapToTable(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 3
    .parameter "column"
    .parameter "table"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "table"
    .parameter "columns"
    .parameter "orderBy"

    .prologue
    .line 197
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "db"
    .parameter "table"
    .parameter "columns"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 210
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "db"
    .parameter "columns"
    .parameter "orderBy"

    .prologue
    const/4 v3, 0x0

    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "columns"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    const-string v1, "Table not specified"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->mapColumns([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    return-object p0
.end method

.method public setNextPoolable(Lcom/google/android/apps/books/util/SelectionBuilder;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mNext:Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 71
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, Lcom/google/android/apps/books/util/SelectionBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/SelectionBuilder;->setNextPoolable(Lcom/google/android/apps/books/util/SelectionBuilder;)V

    return-void
.end method

.method public table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 0
    .parameter "table"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionBuilder[table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "db"
    .parameter "values"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    const-string v1, "Table not specified"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "db"
    .parameter "table"
    .parameter "values"

    .prologue
    .line 228
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 6
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 104
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Valid selection required when including arguments="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    if-eqz p2, :cond_2

    .line 118
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 121
    .local v0, arg:Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-object p0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 1
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 94
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method
