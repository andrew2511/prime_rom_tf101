.class Lcom/splashtop/remote/utils/DBAdapter$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/utils/DBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    const-string v0, "remote.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 45
    const-string v0, "CREATE TABLE remote (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, addr TEXT NOT NULL, pwd TEXT, port TEXT NOT NULL, resolution TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 50
    const-string v0, "DROP TABLE IF EXISTS remote"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/utils/DBAdapter$DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method
