.class public Landroid/test/DatabaseTestUtils;
.super Ljava/lang/Object;
.source "DatabaseTestUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertSchemaEquals(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "expectedDb"
    .parameter "db"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/test/DatabaseTestUtils;->getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v0

    .line 39
    .local v0, expectedSchema:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/test/DatabaseTestUtils;->getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    .line 40
    .local v1, schema:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/util/Set;Ljava/util/Set;)V

    .line 41
    return-void
.end method

.method private static getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .registers 6
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 46
    .local v1, schemaSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "SELECT sql FROM sqlite_master"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 48
    .local v0, entityCursor:Landroid/database/Cursor;
    :goto_b
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 49
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, sql:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_b

    .line 53
    .end local v2           #sql:Ljava/lang/String;
    :catchall_1a
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    return-object v1
.end method
