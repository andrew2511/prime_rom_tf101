.class public Lcom/google/googlenav/provider/StarredItemProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->b:[Ljava/lang/String;

    const-string v0, "content://com.google.android.maps.StarredItemProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-wide/16 v0, -0x1388

    iput-wide v0, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    return-void
.end method

.method private static a(Lv/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-interface {p0, p1}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v5, v4}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->y()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v1

    invoke-virtual {v1}, Lv/A;->c()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->j()V

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deletion not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.dir/vnd.gmm.starreditem"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insertion not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/login/b;->a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    :cond_0
    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lv/A;->a(Lh/eY;)Lv/A;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->R_()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->a()V

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/google/googlenav/provider/StarredItemProvider;->b:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v3, v9

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lv/d;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lv/d;->d()Lf/h;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-virtual {v4}, Lv/d;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Lv/d;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Lv/d;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v5}, Lf/h;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x6

    invoke-virtual {v4}, Lv/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/googlenav/provider/StarredItemProvider;->a(Lv/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
