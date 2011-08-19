.class public Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
.super Ljava/lang/Object;
.source "AccInfoAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "accinfo"

.field private static final KEY_BROWSESORT:Ljava/lang/String; = "browsesort"

.field private static final KEY_BROWSESORTBYDESC:Ljava/lang/String; = "browsesortbydesc"

.field private static final KEY_ENCRYPT_PWD:Ljava/lang/String; = "encryptPwd"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_PWD:Ljava/lang/String; = "pwd"

.field private static final KEY_SGW:Ljava/lang/String; = "sgw"

.field private static final TAG:Ljava/lang/String; = "AccInfoAdapter"

.field private static final TableScheme:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 30
    const-string v2, "pwd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 31
    const-string v2, "sgw"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 32
    const-string v2, "encryptPwd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 33
    const-string v2, "browsesort"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 34
    const-string v2, "browsesortbydesc"

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->TableScheme:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 54
    return-void
.end method

.method public deleteAccInfo()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "accinfo"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 101
    .local v0, rtn:Z
    :goto_0
    const-string v1, "AccInfoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAccInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v0

    .line 100
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getAccInfo()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accinfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->TableScheme:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 94
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insertAccInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "uid"
    .parameter "pwd"
    .parameter "sgw"

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "pwd"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "sgw"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "encryptPwd"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "accinfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 66
    .local v1, rtn:J
    const-string v3, "AccInfoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertAccInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    return-object p0
.end method

.method public updateAccBrowseSort(Ljava/lang/String;II)J
    .locals 7
    .parameter "uid"
    .parameter "browseSort"
    .parameter "sortByDesc"

    .prologue
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "browsesort"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v4, "browsesortbydesc"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "accinfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 113
    .local v1, rtn:J
    const-string v4, "AccInfoAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateAccBrowseSort="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-wide v1
.end method

.method public updateAccEncryptPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "uid"
    .parameter "pwd"
    .parameter "sgw"
    .parameter "encryptPwd"

    .prologue
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v4, "pwd"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v4, "sgw"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "encryptPwd"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "accinfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 81
    .local v1, rtn:J
    const-string v4, "AccInfoAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateAccEncryptPwd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-wide v1
.end method
