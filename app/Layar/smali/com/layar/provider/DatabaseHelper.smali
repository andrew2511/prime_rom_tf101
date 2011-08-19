.class public Lcom/layar/provider/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "layar4"

.field private static final DATABASE_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/layar/provider/DatabaseHelper;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/provider/DatabaseHelper;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const-string v0, "layar4.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    iput-object p1, p0, Lcom/layar/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 9
    .parameter "db"
    .parameter "scriptFile"

    .prologue
    const/4 v8, 0x0

    .line 52
    :try_start_0
    iget-object v4, p0, Lcom/layar/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/layar/util/Util;->getInputString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, sql:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, sqlStatements:[Ljava/lang/String;
    array-length v4, v2

    move v5, v8

    :goto_0
    if-lt v5, v4, :cond_0

    .line 60
    const/4 v4, 0x1

    .line 66
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #sql:Ljava/lang/String;
    .end local v2           #sqlStatements:[Ljava/lang/String;
    :goto_1
    return v4

    .line 55
    .restart local v0       #is:Ljava/io/InputStream;
    .restart local v1       #sql:Ljava/lang/String;
    .restart local v2       #sqlStatements:[Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v5

    .line 56
    .local v3, statement:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #sql:Ljava/lang/String;
    .end local v2           #sqlStatements:[Ljava/lang/String;
    .end local v3           #statement:Ljava/lang/String;
    :catch_0
    move-exception v4

    :goto_2
    move v4, v8

    .line 66
    goto :goto_1

    .line 61
    :catch_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 38
    sget-object v0, Lcom/layar/provider/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating database from version 6"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "layar_db.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 40
    const-string v0, "init_inserts_db.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 71
    sget-object v0, Lcom/layar/provider/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "layar_db.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 74
    const-string v0, "init_inserts_db.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 75
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 76
    const-string v0, "upgrade_layar_db_02_to_04.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 84
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 85
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 78
    const-string v0, "upgrade_layar_db_03_to_04.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 80
    const-string v0, "upgrade_layar_db_05_to_06_l.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 81
    const-string v0, "upgrade_layar_db_05_to_06_f.sql"

    invoke-direct {p0, p1, v0}, Lcom/layar/provider/DatabaseHelper;->runSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public wipeDatabase()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/layar/provider/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "layar4.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 93
    return-void
.end method
