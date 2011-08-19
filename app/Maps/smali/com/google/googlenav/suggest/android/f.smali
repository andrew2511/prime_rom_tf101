.class public Lcom/google/googlenav/suggest/android/f;
.super LJ/l;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, LJ/l;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/f;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/Cursor;I)LJ/a;
    .locals 4

    new-instance v0, LJ/a;

    invoke-direct {v0, p1}, LJ/a;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/f;->a()I

    move-result v2

    add-int v3, p3, v1

    invoke-static {p2, v2, v3}, Lcom/google/googlenav/suggest/android/f;->b(Landroid/database/Cursor;II)LJ/o;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, LJ/a;->b(LJ/o;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/f;->a()I

    move-result v2

    add-int v3, p3, v1

    invoke-static {p2, v2, v3}, Lcom/google/googlenav/suggest/android/f;->a(Landroid/database/Cursor;II)LJ/o;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;II)LJ/o;
    .locals 9

    const/4 v5, 0x2

    new-instance v0, LJ/o;

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v7, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, LJ/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;II)LJ/o;
    .locals 9

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-instance v0, LJ/o;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, LJ/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected b(Ljava/lang/String;)LJ/a;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/f;->e()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/suggest/android/f;->a(Ljava/lang/String;Landroid/database/Cursor;I)LJ/a;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "AndroidLocalSuggestProvider"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "a"

    return-object v0
.end method
