.class Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VibeFavoriteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe/favorite/VibeFavoriteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteDbHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 204
    const-string v0, "vibe_favorite.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 207
    const-string v0, "CREATE TABLE favorite(_id INTEGER PRIMARY KEY AUTOINCREMENT, vibeAction TEXT NOT NULL, tabType INTEGER, MainCategoryCmsId TEXT, MainCategoryPremiumId TEXT, MainCategoryName TEXT, SubCategoryId TEXT NOT NULL, SubCategoryName TEXT, SPName TEXT, ContentUrl TEXT, ContentDetailUrl TEXT, PackageUrl TEXT, SPContentId TEXT NOT NULL, ContentName TEXT, ImageUrl TEXT, ImageBuffer IMAGE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 229
    const-string v0, "DROP TABLE IF EXISTS favorite"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    return-void
.end method
