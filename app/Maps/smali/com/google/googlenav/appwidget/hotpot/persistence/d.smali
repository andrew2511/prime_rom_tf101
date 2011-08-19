.class Lcom/google/googlenav/appwidget/hotpot/persistence/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;

    const-string v0, "hotpot.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->a(Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;)Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->a(Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;)Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
