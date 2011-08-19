.class public Lcom/splashtop/remote/utils/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/utils/DBAdapter$DBHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "remote.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final KEY_ADDR:Ljava/lang/String; = "addr"

.field private static final KEY_ID:Ljava/lang/String; = "_id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PORT:Ljava/lang/String; = "port"

.field private static final KEY_PWD:Ljava/lang/String; = "pwd"

.field private static final KEY_RESOLUTION:Ljava/lang/String; = "resolution"

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE remote (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, addr TEXT NOT NULL, pwd TEXT, port TEXT NOT NULL, resolution TEXT NOT NULL);"

.field private static final TABLE_NAME:Ljava/lang/String; = "remote"


# instance fields
.field private dbHelper:Lcom/splashtop/remote/utils/DBAdapter$DBHelper;

.field private mContext:Landroid/content/Context;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    iput-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->dbHelper:Lcom/splashtop/remote/utils/DBAdapter$DBHelper;

    .line 56
    iput-object p1, p0, Lcom/splashtop/remote/utils/DBAdapter;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->dbHelper:Lcom/splashtop/remote/utils/DBAdapter$DBHelper;

    invoke-virtual {v0}, Lcom/splashtop/remote/utils/DBAdapter$DBHelper;->close()V

    .line 66
    return-void
.end method

.method public deleteData(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "remote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAllData()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "remote"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "addr"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "pwd"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "port"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "resolution"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 87
    .local v8, cur:Landroid/database/Cursor;
    return-object v8
.end method

.method public fetchData(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "name"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "addr"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "pwd"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "port"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "resolution"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 96
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 97
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    :cond_0
    return-object v10
.end method

.method public fetchDataByAddr(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "name"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "addr"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "pwd"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "port"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "resolution"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 109
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 110
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    :cond_0
    return-object v10
.end method

.method public insertData(Lcom/splashtop/remote/bean/MacBean;)J
    .locals 4
    .parameter "mb"

    .prologue
    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "addr"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "pwd"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "port"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "resolution"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/splashtop/remote/utils/DBAdapter$DBHelper;

    iget-object v1, p0, Lcom/splashtop/remote/utils/DBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/splashtop/remote/utils/DBAdapter$DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->dbHelper:Lcom/splashtop/remote/utils/DBAdapter$DBHelper;

    .line 61
    iget-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->dbHelper:Lcom/splashtop/remote/utils/DBAdapter$DBHelper;

    invoke-virtual {v0}, Lcom/splashtop/remote/utils/DBAdapter$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    return-void
.end method

.method public updateData(Lcom/splashtop/remote/bean/MacBean;)Z
    .locals 6
    .parameter "mb"

    .prologue
    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "addr"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "pwd"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "port"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "resolution"

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getMacResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/splashtop/remote/utils/DBAdapter;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
