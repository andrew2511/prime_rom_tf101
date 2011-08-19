.class Lcom/google/googlenav/appwidget/traffic/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TrafficAppWidgets"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE appwidgets (_id INTEGER PRIMARY KEY,title TEXT,endPoint TEXT,endPointLat INTEGER,endPointLng INTEGER,eta INTEGER,delayRatio INTEGER,lastLaunched INTEGER,lastUpdated INTEGER,lastUpdatedDistance INTEGER,configured INTEGER,sleepTime INTEGER,errorMsg TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    const-string v0, "DROP TABLE IF EXISTS appwidgets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/appwidget/traffic/i;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
