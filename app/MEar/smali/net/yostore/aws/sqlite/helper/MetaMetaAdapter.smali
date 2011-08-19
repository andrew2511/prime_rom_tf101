.class public Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;
.super Ljava/lang/Object;
.source "MetaMetaAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "metameta"

.field public static final KEY_CHGSEQ:Ljava/lang/String; = "changeseq"

.field public static final KEY_LSTMOD:Ljava/lang/String; = "lastmodified"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "MetaMetaAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 44
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 5
    .parameter "username"

    .prologue
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "username=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "metameta"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 113
    .local v0, rtn:Z
    :goto_0
    const-string v2, "MetaMetaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0

    .line 112
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "username"

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "metameta"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 50
    const-string v5, "username"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 51
    const-string v5, "changeseq"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 52
    const-string v5, "lastmodified"

    aput-object v5, v2, v3

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "username=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 49
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 59
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insert(Lnet/yostore/aws/sqlite/entity/MetaMeta;)J
    .locals 7
    .parameter "meta"

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "username"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "changeseq"

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v3, "lastmodified"

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "metameta"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 103
    .local v1, rtn:J
    const-string v3, "MetaMetaAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertmetameta="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-wide v1
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 11
    .parameter "username"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "metameta"

    new-array v2, v10, [Ljava/lang/String;

    .line 66
    const-string v3, "count(*)"

    aput-object v3, v2, v9

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "username=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 65
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 74
    .local v8, mCursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v10

    .line 78
    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-object p0
.end method

.method public update(Lnet/yostore/aws/sqlite/entity/MetaMeta;)I
    .locals 7
    .parameter "meta"

    .prologue
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "username=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "changeseq"

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v3, "lastmodified"

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "metameta"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, rtn:I
    const-string v3, "MetaMetaAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1
.end method
