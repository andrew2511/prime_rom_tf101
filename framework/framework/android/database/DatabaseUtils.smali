.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final STATEMENT_ABORT:I = 0x6

.field public static final STATEMENT_ATTACH:I = 0x3

.field public static final STATEMENT_BEGIN:I = 0x4

.field public static final STATEMENT_COMMIT:I = 0x5

.field public static final STATEMENT_DDL:I = 0x8

.field public static final STATEMENT_OTHER:I = 0x63

.field public static final STATEMENT_PRAGMA:I = 0x7

.field public static final STATEMENT_SELECT:I = 0x1

.field public static final STATEMENT_UNPREPARED:I = 0x9

.field public static final STATEMENT_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static final countProjection:[Ljava/lang/String;

.field private static mColl:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/DatabaseUtils;->countProjection:[Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    return-void
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .parameter "sb"
    .parameter "sqlString"

    .prologue
    const/16 v5, 0x27

    .line 268
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 271
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_25

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 273
    .local v0, c:C
    if-ne v0, v5, :cond_1c

    .line 274
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_1c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 279
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_25
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "originalValues"
    .parameter "newValues"

    .prologue
    const/4 v3, 0x0

    .line 1279
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_6
    move-object v1, p1

    .line 1285
    :goto_7
    return-object v1

    .line 1282
    :cond_8
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 1283
    .local v0, result:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1284
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 1285
    goto :goto_7
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 5
    .parameter "sql"
    .parameter "value"

    .prologue
    .line 298
    if-nez p1, :cond_8

    .line 299
    const-string v2, "NULL"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_7
    return-void

    .line 300
    :cond_8
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_22

    .line 301
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 302
    .local v1, bool:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 303
    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 305
    :cond_1c
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 308
    .end local v1           #bool:Ljava/lang/Boolean;
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .registers 7
    .parameter "prog"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 197
    if-nez p2, :cond_6

    .line 198
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 215
    .end local p2
    :goto_5
    return-void

    .line 199
    .restart local p2
    :cond_6
    instance-of v2, p2, Ljava/lang/Double;

    if-nez v2, :cond_e

    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_18

    .line 200
    :cond_e
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_5

    .line 201
    .restart local p2
    :cond_18
    instance-of v2, p2, Ljava/lang/Number;

    if-eqz v2, :cond_26

    .line 202
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_5

    .line 203
    .restart local p2
    :cond_26
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_40

    .line 204
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 205
    .local v1, bool:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 206
    const-wide/16 v2, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_5

    .line 208
    :cond_3a
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_5

    .line 210
    .end local v1           #bool:Ljava/lang/Boolean;
    :cond_40
    instance-of v2, p2, [B

    if-eqz v2, :cond_4c

    .line 211
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_5

    .line 213
    .restart local p2
    :cond_4c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_5
.end method

.method public static blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 749
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v1

    .line 751
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-object v1

    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 323
    :goto_7
    return-object v0

    .line 319
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p0

    .line 320
    goto :goto_7

    .line 323
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "sqlStatements"

    .prologue
    .line 1213
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1217
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, ";\n"

    invoke-static {p3, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1218
    .local v5, statements:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v3, :cond_20

    aget-object v4, v0, v2

    .line 1219
    .local v4, statement:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1218
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1220
    :cond_1c
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_19

    .line 1222
    .end local v4           #statement:Ljava/lang/String;
    :cond_20
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1224
    return-void
.end method

.method public static cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 623
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 625
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 629
    .end local p0
    :goto_15
    return-void

    .line 627
    .restart local p0
    :cond_16
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_15
.end method

.method public static cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 857
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 858
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 859
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 861
    :cond_18
    return-void
.end method

.method public static cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 610
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public static cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 841
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 842
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 843
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 845
    :cond_18
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 549
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 562
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 563
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 564
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    .end local p0
    :goto_15
    return-void

    .line 566
    .restart local p0
    :cond_16
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_15
.end method

.method public static cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 825
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 826
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 827
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    :cond_18
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 579
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 8
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 592
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 593
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 594
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 595
    .local v1, value:Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 599
    .end local v1           #value:Ljava/lang/Long;
    .end local p0
    :goto_15
    return-void

    .line 597
    .restart local p0
    :cond_16
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_15
.end method

.method public static cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 793
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 794
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 795
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 797
    :cond_18
    return-void
.end method

.method public static cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 9
    .parameter "cursor"
    .parameter "values"

    .prologue
    .line 638
    instance-of v5, p0, Landroid/database/AbstractWindowedCursor;

    if-eqz v5, :cond_25

    move-object v0, p0

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v5, v0

    move-object v1, v5

    .line 641
    .local v1, awc:Landroid/database/AbstractWindowedCursor;
    :goto_9
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, columns:[Ljava/lang/String;
    array-length v4, v2

    .line 643
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    if-ge v3, v4, :cond_32

    .line 644
    if-eqz v1, :cond_28

    invoke-virtual {v1, v3}, Landroid/database/AbstractWindowedCursor;->isBlob(I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 645
    aget-object v5, v2, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 643
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 638
    .end local v1           #awc:Landroid/database/AbstractWindowedCursor;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_25
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_9

    .line 647
    .restart local v1       #awc:Landroid/database/AbstractWindowedCursor;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #length:I
    :cond_28
    aget-object v5, v2, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 650
    :cond_32
    return-void
.end method

.method public static cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 809
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 810
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 811
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 813
    :cond_18
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 512
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 538
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 777
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 778
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 779
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_14
    return-void
.end method

.method public static cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .registers 5
    .parameter "cursor"
    .parameter "field"
    .parameter "inserter"
    .parameter "index"

    .prologue
    .line 525
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 526
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 440
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 441
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 9
    .parameter "cursor"
    .parameter "stream"

    .prologue
    .line 450
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, cols:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    array-length v3, v0

    .line 453
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v3, :cond_55

    .line 456
    :try_start_28
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2b} :catch_51

    move-result-object v4

    .line 462
    .local v4, value:Ljava/lang/String;
    :goto_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 457
    .end local v4           #value:Ljava/lang/String;
    :catch_51
    move-exception v1

    .line 460
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_2c

    .line 464
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #value:Ljava/lang/String;
    :cond_55
    const-string/jumbo v5, "}"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 9
    .parameter "cursor"
    .parameter "sb"

    .prologue
    .line 474
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, cols:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    array-length v3, v0

    .line 477
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v3, :cond_5b

    .line 480
    :try_start_28
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2b} :catch_57

    move-result-object v4

    .line 486
    .local v4, value:Ljava/lang/String;
    :goto_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 481
    .end local v4           #value:Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 484
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_2c

    .line 488
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #value:Ljava/lang/String;
    :cond_5b
    const-string/jumbo v5, "}\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    return-void
.end method

.method public static dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 376
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 377
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 5
    .parameter "cursor"
    .parameter "stream"

    .prologue
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    if-eqz p0, :cond_2d

    .line 389
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 391
    .local v0, startPos:I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 392
    :goto_20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 393
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_20

    .line 395
    :cond_2a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    .end local v0           #startPos:I
    :cond_2d
    const-string v1, "<<<<<"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "cursor"
    .parameter "sb"

    .prologue
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    if-eqz p0, :cond_33

    .line 410
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 412
    .local v0, startPos:I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 413
    :goto_26
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 414
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_26

    .line 416
    :cond_30
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 418
    .end local v0           #startPos:I
    :cond_33
    const-string v1, "<<<<<\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    return-void
.end method

.method public static dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    .line 332
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 334
    .local v0, arr:[B
    :try_start_4
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    .line 336
    :goto_10
    return-object v2

    .line 335
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 336
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_10
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .registers 3
    .parameter "name"

    .prologue
    .line 361
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_10

    .line 362
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 363
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 365
    :cond_10
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"

    .prologue
    .line 346
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 347
    .local v0, arr:[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    .line 348
    .local v1, keys:[C
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static getKeyLen([B)I
    .registers 3
    .parameter "arr"

    .prologue
    const/4 v1, 0x1

    .line 352
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_9

    .line 353
    array-length v0, p0

    .line 356
    :goto_8
    return v0

    :cond_9
    array-length v0, p0

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public static getSqlStatementType(Ljava/lang/String;)I
    .registers 6
    .parameter "sql"

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 1241
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_10

    move v1, v4

    .line 1271
    :goto_f
    return v1

    .line 1245
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, prefixSql:Ljava/lang/String;
    const-string v1, "SEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1247
    const/4 v1, 0x1

    goto :goto_f

    .line 1248
    :cond_23
    const-string v1, "INS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "UPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "REP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "DEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1252
    :cond_43
    const/4 v1, 0x2

    goto :goto_f

    .line 1253
    :cond_45
    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v1, v2

    .line 1254
    goto :goto_f

    .line 1255
    :cond_4f
    const-string v1, "COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    move v1, v3

    .line 1256
    goto :goto_f

    .line 1257
    :cond_59
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    move v1, v3

    .line 1258
    goto :goto_f

    .line 1259
    :cond_63
    const-string v1, "ROL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1260
    const/4 v1, 0x6

    goto :goto_f

    .line 1261
    :cond_6d
    const-string v1, "BEG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1262
    const/4 v1, 0x4

    goto :goto_f

    .line 1263
    :cond_77
    const-string v1, "PRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1264
    const/4 v1, 0x7

    goto :goto_f

    .line 1265
    :cond_81
    const-string v1, "CRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "DRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "ALT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1267
    :cond_99
    const/16 v1, 0x8

    goto/16 :goto_f

    .line 1268
    :cond_9d
    const-string v1, "ANA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    const-string v1, "DET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1269
    :cond_ad
    const/16 v1, 0x9

    goto/16 :goto_f

    :cond_b1
    move v1, v4

    .line 1271
    goto/16 :goto_f
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .registers 2
    .parameter "obj"

    .prologue
    .line 235
    if-nez p0, :cond_4

    .line 236
    const/4 v0, 0x0

    .line 244
    :goto_3
    return v0

    .line 237
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 238
    const/4 v0, 0x4

    goto :goto_3

    .line 239
    :cond_a
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_12

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_14

    .line 240
    :cond_12
    const/4 v0, 0x2

    goto :goto_3

    .line 241
    :cond_14
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1c

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 242
    :cond_1c
    const/4 v0, 0x1

    goto :goto_3

    .line 244
    :cond_1e
    const/4 v0, 0x3

    goto :goto_3
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 702
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-wide v1

    .line 704
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .registers 4
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 4
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v0, 0x0

    .line 659
    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .parameter "db"
    .parameter "table"
    .parameter "selection"

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 690
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 691
    .local v0, s:Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select count(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 690
    .end local v0           #s:Ljava/lang/String;
    :cond_37
    const-string v1, ""

    move-object v0, v1

    goto :goto_1a
.end method

.method public static final readExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "reply"

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 134
    .local v0, code:I
    if-nez v0, :cond_7

    .line 137
    :goto_6
    return-void

    .line 135
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method private static final readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .registers 4
    .parameter "reply"
    .parameter "msg"
    .parameter "code"

    .prologue
    .line 164
    packed-switch p2, :pswitch_data_38

    .line 182
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 184
    return-void

    .line 166
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_13
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_19
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_1f
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_25
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_2b
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_31
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_7
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
        :pswitch_2b
        :pswitch_31
    .end packed-switch
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 142
    .local v0, code:I
    if-nez v0, :cond_7

    .line 149
    :goto_6
    return-void

    .line 143
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, msg:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 145
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_14
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public static readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 154
    .local v0, code:I
    if-nez v0, :cond_7

    .line 161
    :goto_6
    return-void

    .line 155
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, msg:Ljava/lang/String;
    const/16 v2, 0xa

    if-ne v0, v2, :cond_15

    .line 157
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_15
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, escaper:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 722
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 724
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v1

    .line 726
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-object v1

    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .registers 6
    .parameter "reply"
    .parameter "e"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, code:I
    const/4 v1, 0x1

    .line 89
    .local v1, logException:Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1c

    .line 90
    const/4 v0, 0x1

    .line 91
    const/4 v1, 0x0

    .line 115
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    if-eqz v1, :cond_1b

    .line 119
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_1b
    :goto_1b
    return-void

    .line 92
    :cond_1c
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_22

    .line 93
    const/4 v0, 0x2

    goto :goto_8

    .line 94
    :cond_22
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_28

    .line 95
    const/4 v0, 0x3

    goto :goto_8

    .line 96
    :cond_28
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v2, :cond_2e

    .line 97
    const/4 v0, 0x4

    goto :goto_8

    .line 98
    :cond_2e
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_34

    .line 99
    const/4 v0, 0x5

    goto :goto_8

    .line 100
    :cond_34
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_3a

    .line 101
    const/4 v0, 0x6

    goto :goto_8

    .line 102
    :cond_3a
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_40

    .line 103
    const/4 v0, 0x7

    goto :goto_8

    .line 104
    :cond_40
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v2, :cond_47

    .line 105
    const/16 v0, 0x8

    goto :goto_8

    .line 106
    :cond_47
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_4e

    .line 107
    const/16 v0, 0x9

    goto :goto_8

    .line 108
    :cond_4e
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_55

    .line 109
    const/16 v0, 0xa

    goto :goto_8

    .line 111
    :cond_55
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 112
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
