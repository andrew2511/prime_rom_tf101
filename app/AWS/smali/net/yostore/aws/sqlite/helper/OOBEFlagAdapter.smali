.class public Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;
.super Ljava/lang/Object;
.source "OOBEFlagAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "oobe_flag"

.field public static final KEY_ISFIRSTTOUSE:Ljava/lang/String; = "isfirsttouse"

.field private static final TAG:Ljava/lang/String; = "OOBEFlagAdapter"

.field private static final TableScheme:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 24
    const-string v2, "isfirsttouse"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->TableScheme:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 43
    return-void
.end method

.method public deleteOOBEFlag()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "oobe_flag"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 76
    .local v0, rtn:Z
    :goto_0
    const-string v1, "OOBEFlagAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOOBEFlag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v0

    .line 75
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getOOBEFlag()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "oobe_flag"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->TableScheme:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insertFirstToUseFlag(I)J
    .locals 6
    .parameter "firsToUse"

    .prologue
    .line 49
    invoke-virtual {p0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->deleteOOBEFlag()Z

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "isfirsttouse"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "oobe_flag"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 55
    .local v1, rtn:J
    const-string v3, "OOBEFlagAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertFirstToUseFlag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    return-object p0
.end method

.method public updateFirstTimeToUseFlag(I)J
    .locals 7
    .parameter "flag"

    .prologue
    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "isfirsttouse"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "oobe_flag"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 86
    .local v1, rtn:J
    const-string v4, "OOBEFlagAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateOOBEFlag="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-wide v1
.end method
