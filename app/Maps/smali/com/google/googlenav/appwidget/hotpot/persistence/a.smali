.class public Lcom/google/googlenav/appwidget/hotpot/persistence/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/appwidget/hotpot/persistence/i;


# instance fields
.field private a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

.field private final b:Landroid/content/Context;

.field private c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;-><init>(Lcom/google/googlenav/appwidget/hotpot/persistence/j;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-direct {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/appwidget/hotpot/persistence/b;)V
    .locals 7

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->a(Lcom/google/googlenav/appwidget/hotpot/persistence/b;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    const-string v3, "details_url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "details_url"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->e()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->a(Lcom/google/googlenav/appwidget/hotpot/persistence/b;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b()V

    return-void
.end method

.method private d()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->d()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->b(Landroid/database/Cursor;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->e()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->a:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public a(I)Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/g;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->b(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a:Lcom/google/googlenav/appwidget/hotpot/persistence/h;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/h;->a(Ljava/util/ArrayList;)V

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Law/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a(Law/e;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Lcom/google/googlenav/appwidget/hotpot/persistence/b;)V

    :cond_0
    return-void
.end method

.method public a([Lcom/google/googlenav/c;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->c()V

    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a(Lcom/google/googlenav/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->e()V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/a;->b()V

    return-void
.end method
