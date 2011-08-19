.class public Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static d:Landroid/content/UriMatcher;


# instance fields
.field private c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

.field private e:Lcom/google/googlenav/appwidget/hotpot/persistence/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.google.googlenav.appwidget.hotpot/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->a:Landroid/net/Uri;

    const-string v0, "content://com.google.googlenav.appwidget.hotpot/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->d:Landroid/content/UriMatcher;

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.google.googlenav.appwidget.hotpot"

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.google.googlenav.appwidget.hotpot"

    const-string v2, "count"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-direct {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;)Lcom/google/googlenav/appwidget/hotpot/persistence/g;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->e:Lcom/google/googlenav/appwidget/hotpot/persistence/d;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->e:Lcom/google/googlenav/appwidget/hotpot/persistence/d;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/d;

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/d;-><init>(Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->e:Lcom/google/googlenav/appwidget/hotpot/persistence/d;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->e:Lcom/google/googlenav/appwidget/hotpot/persistence/d;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->e:Lcom/google/googlenav/appwidget/hotpot/persistence/d;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
