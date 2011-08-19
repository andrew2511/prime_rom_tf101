.class public final Lcom/android/gallery3d/picasa/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field public static final SQLITE_TYPES:[Ljava/lang/String;


# instance fields
.field private final mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/picasa/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/picasa/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/picasa/Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 52
    .local v1, columns:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    .line 56
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 57
    .local v4, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, hasFullTextIndex:Z
    if-eqz v1, :cond_1

    .line 59
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 60
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-eq v3, v5, :cond_1

    .line 61
    aget-object v0, v1, v3

    .line 62
    .local v0, column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 63
    iget-boolean v5, v0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_0

    .line 64
    const/4 v2, 0x1

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v3           #i:I
    :cond_1
    iput-object v4, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mHasFullTextIndex:Z

    .line 70
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 94
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 360
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    move v11, v12

    .line 362
    :goto_0
    array-length v0, v10

    if-eq v11, v0, :cond_9

    .line 364
    aget-object v7, v10, v11

    .line 365
    const-class v0, Lcom/android/gallery3d/picasa/Entry$Column;

    invoke-interface {v7, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/picasa/Entry$Column;

    .line 366
    if-nez p0, :cond_0

    .line 362
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 373
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_1

    move v2, v12

    .line 395
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 396
    new-instance v0, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    invoke-interface {p0}, Lcom/android/gallery3d/picasa/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/gallery3d/picasa/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {p0}, Lcom/android/gallery3d/picasa/Entry$Column;->fullText()Z

    move-result v4

    invoke-interface {p0}, Lcom/android/gallery3d/picasa/Entry$Column;->extraSql()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/gallery3d/picasa/Entry$Column;->doNotMerge()Z

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;ZLjava/lang/reflect/Field;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 375
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 376
    const/4 v0, 0x1

    move v2, v0

    goto :goto_2

    .line 377
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 378
    const/4 v0, 0x2

    move v2, v0

    goto :goto_2

    .line 379
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 380
    const/4 v0, 0x3

    move v2, v0

    goto :goto_2

    .line 381
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 382
    const/4 v0, 0x4

    move v2, v0

    goto :goto_2

    .line 383
    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 384
    const/4 v0, 0x5

    move v2, v0

    goto :goto_2

    .line 385
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 386
    const/4 v0, 0x6

    move v2, v0

    goto :goto_2

    .line 387
    :cond_7
    const-class v1, [B

    if-ne v0, v1, :cond_8

    .line 388
    const/4 v0, 0x7

    move v2, v0

    goto :goto_2

    .line 390
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field type for column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    .line 403
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 404
    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 349
    const-class v0, Lcom/android/gallery3d/picasa/Entry$Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/picasa/Entry$Table;

    .line 350
    if-nez p0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/android/gallery3d/picasa/Entry$Table;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 206
    iget-object v9, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    .line 207
    .local v9, tableName:Ljava/lang/String;
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TABLE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .local v8, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v10, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v1, v0, v4

    .line 214
    .local v1, column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->isId()Z

    move-result v10

    if-nez v10, :cond_0

    .line 215
    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    sget-object v10, Lcom/android/gallery3d/picasa/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v11, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->type:I

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->extraSql:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 220
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->extraSql:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    .end local v0           #arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #sql:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 225
    .restart local v0       #arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #sql:Ljava/lang/StringBuilder;
    :cond_2
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 227
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    .line 232
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v10, :cond_3

    .line 233
    const-string v10, "CREATE INDEX "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v10, "_index_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v10, " ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 243
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 247
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :cond_4
    iget-boolean v10, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v10, :cond_b

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_fulltext"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, ftsTableName:Ljava/lang/String;
    const-string v10, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v10, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v1, v0, v4

    .line 254
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_5

    .line 256
    iget-object v2, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 257
    .local v2, columnName:Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v10, " TEXT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .end local v2           #columnName:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 262
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :cond_6
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 264
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .local v5, insertSql:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v10, " (_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_8

    aget-object v1, v0, v4

    .line 272
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_7

    .line 273
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 277
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :cond_8
    const-string v10, ") VALUES (new._id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_a

    aget-object v1, v0, v4

    .line 279
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_9

    .line 280
    const-string v10, ",new."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v10, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 284
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :cond_a
    const-string v10, ");"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, insertSqlString:Ljava/lang/String;
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v10, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 296
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v10, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 307
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v10, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v10, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v10, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 318
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    .end local v3           #ftsTableName:Ljava/lang/String;
    .end local v5           #insertSql:Ljava/lang/StringBuilder;
    .end local v6           #insertSqlString:Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;
    .locals 10
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/gallery3d/picasa/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, object:Lcom/android/gallery3d/picasa/Entry;,"TT;"
    const/4 v9, 0x1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 100
    .local v1, column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget v2, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 101
    .local v2, columnIndex:I
    iget-object v4, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 102
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 99
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    .end local v0           #arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 131
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 107
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .restart local v2       #columnIndex:I
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :pswitch_1
    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-ne v7, v9, :cond_0

    move v7, v9

    :goto_2
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    .line 110
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_1

    .line 113
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 116
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v4, p2, v7, v8}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 119
    :pswitch_5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 122
    :pswitch_6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v4, p2, v7, v8}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 125
    :pswitch_7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_1
    return-object p2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v1, "_id=?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/16 v3, 0x3b

    .line 323
    iget-object v1, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    .line 324
    .local v1, tableName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 330
    iget-boolean v2, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_0

    .line 331
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "columnName"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 86
    .local v1, column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget v4, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 90
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :goto_1
    return v4

    .line 85
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/Entry;)J
    .locals 7
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 190
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lcom/android/gallery3d/picasa/EntrySchema;->objectToValues(Lcom/android/gallery3d/picasa/Entry;Landroid/content/ContentValues;)V

    .line 192
    iget-wide v3, p2, Lcom/android/gallery3d/picasa/Entry;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 193
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 196
    .local v0, id:J
    iput-wide v0, p2, Lcom/android/gallery3d/picasa/Entry;->id:J

    .line 197
    return-wide v0
.end method

.method public objectToValues(Lcom/android/gallery3d/picasa/Entry;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "object"
    .parameter "values"

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .end local p0
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 138
    .local v1, column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    iget-boolean v7, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->doNotMerge:Z

    if-eqz v7, :cond_0

    .line 137
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 140
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 141
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 143
    :pswitch_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v0           #arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 169
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 146
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .restart local v2       #columnName:Ljava/lang/String;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :pswitch_1
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 149
    :pswitch_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 152
    :pswitch_3
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 155
    :pswitch_4
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 158
    :pswitch_5
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 161
    :pswitch_6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 164
    :pswitch_7
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 171
    .end local v1           #column:Lcom/android/gallery3d/picasa/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_1
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/picasa/Entry;)Z
    .locals 10
    .parameter "db"
    .parameter "id"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 181
    .local v9, success:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, v8, p4}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    .line 183
    const/4 v9, 0x1

    .line 185
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 186
    return v9
.end method
