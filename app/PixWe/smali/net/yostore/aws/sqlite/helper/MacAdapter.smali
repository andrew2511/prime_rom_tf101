.class public Lnet/yostore/aws/sqlite/helper/MacAdapter;
.super Ljava/lang/Object;
.source "MacAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "mac"

.field public static final KEY_MACADDR:Ljava/lang/String; = "macaddr"

.field private static final TAG:Ljava/lang/String; = "MacAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->context:Landroid/content/Context;

    .line 26
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 40
    return-void
.end method

.method public deleteMac()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mac"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 87
    .local v0, rtn:Z
    :goto_0
    const-string v1, "MacAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteMac:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v0

    .line 86
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getMac()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mac"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 73
    const-string v5, "macaddr"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 72
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insertMac(Ljava/lang/String;)J
    .locals 6
    .parameter "macaddr"

    .prologue
    .line 46
    invoke-virtual {p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->deleteMac()Z

    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "macaddr"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "mac"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 52
    .local v1, rtn:J
    const-string v3, "MacAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertMac="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/MacAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/MacAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-object p0
.end method
