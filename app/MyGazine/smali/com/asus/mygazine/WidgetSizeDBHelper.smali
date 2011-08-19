.class public Lcom/asus/mygazine/WidgetSizeDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WidgetSizeDBHelper.java"


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/asus/mygazine/WidgetSizeDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/WidgetSizeDBHelper;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "widgetsize.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/asus/mygazine/WidgetSizeDBHelper;->sInstance:Lcom/asus/mygazine/WidgetSizeDBHelper;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/WidgetSizeDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/mygazine/WidgetSizeDBHelper;->sInstance:Lcom/asus/mygazine/WidgetSizeDBHelper;

    .line 31
    :cond_0
    sget-object v0, Lcom/asus/mygazine/WidgetSizeDBHelper;->sInstance:Lcom/asus/mygazine/WidgetSizeDBHelper;

    return-object v0
.end method


# virtual methods
.method public deleteWidget([I)V
    .locals 5
    .parameter "appWidgetIds"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 76
    sget-boolean v2, Lcom/asus/mygazine/WidgetSizeDBHelper;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WidgetSizeDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteWidget- appWidgetIds["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM widgetsize WHERE widgetId =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public disableWidget(I)V
    .locals 4
    .parameter "widgetType"

    .prologue
    .line 83
    sget-boolean v1, Lcom/asus/mygazine/WidgetSizeDBHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WidgetSizeDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableWidget- widgetType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM widgetsize WHERE widgetType =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 38
    const-string v0, "CREATE TABLE widgetsize (_id INTEGER PRIMARY KEY,widgetId INTEGER UNIQUE ON CONFLICT REPLACE,widgetType INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 51
    return-void
.end method

.method public updateWidget(I[I)V
    .locals 13
    .parameter "widgetType"
    .parameter "appWidgetIds"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "widgetType"

    aput-object v1, v2, v11

    const-string v1, "width"

    aput-object v1, v2, v12

    const/4 v1, 0x2

    const-string v3, "height"

    aput-object v3, v2, v1

    .line 57
    .local v2, WIDGET_SIZE_PROJECTIONS:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v1, p2

    if-ge v10, v1, :cond_2

    .line 58
    new-array v4, v12, [Ljava/lang/String;

    aget v1, p2, v10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    .line 59
    .local v4, selectArgs:[Ljava/lang/String;
    const-string v1, "widgetsize"

    const-string v3, "widgetId=?"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 62
    .local v9, cur:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO widgetsize (widgetId,widgetType,width,height) VALUES (\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, p2, v10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\',\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\',\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\',\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 57
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 72
    .end local v4           #selectArgs:[Ljava/lang/String;
    .end local v9           #cur:Landroid/database/Cursor;
    :cond_2
    return-void
.end method
