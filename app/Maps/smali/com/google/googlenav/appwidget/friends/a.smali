.class final Lcom/google/googlenav/appwidget/friends/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lo/U;

.field private final c:Ljava/util/List;

.field private final d:J

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/U;Ljava/util/List;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/friends/a;->b:Lo/U;

    iput-object p3, p0, Lcom/google/googlenav/appwidget/friends/a;->c:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/googlenav/appwidget/friends/a;->e:Z

    iput-wide p5, p0, Lcom/google/googlenav/appwidget/friends/a;->d:J

    return-void
.end method

.method public static a()Lcom/google/googlenav/appwidget/friends/a;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v10

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Law/e;

    sget-object v1, Ls/T;->z:Law/f;

    invoke-direct {v5, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v5, v0}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lo/U;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lo/U;-><init>(Lo/aH;ZLcom/google/googlenav/c;)V

    move-object v2, v1

    :goto_1
    sget v0, Lcom/google/googlenav/appwidget/friends/g;->a:I

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Law/e;->i(I)I

    move-result v0

    move v3, v9

    :goto_2
    if-ge v3, v0, :cond_2

    new-instance v4, Lo/U;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v3}, Law/e;->e(II)Law/e;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lo/U;-><init>(Lo/aH;ZLcom/google/googlenav/c;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sget v3, Lcom/google/googlenav/appwidget/friends/g;->a:I

    if-ge v0, v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Law/e;->i(I)I

    move-result v0

    move v4, v9

    :goto_4
    if-ge v4, v0, :cond_5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Law/e;->b(II)[B

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_4

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {v6, v8, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    move-object v0, v10

    goto/16 :goto_0

    :cond_5
    :goto_6
    :try_start_1
    sget v4, Lcom/google/googlenav/appwidget/friends/g;->a:I

    if-ge v0, v4, :cond_6

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x5

    invoke-static {v5, v0}, Law/b;->h(Law/e;I)Z

    move-result v4

    const-wide/high16 v6, -0x8000

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Law/e;->e(I)J

    move-result-wide v5

    :goto_7
    new-instance v0, Lcom/google/googlenav/appwidget/friends/a;

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/a;-><init>(Ljava/util/List;Lo/U;Ljava/util/List;ZJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move-wide v5, v6

    goto :goto_7

    :cond_8
    move-object v2, v10

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/friends/a;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->b:Lo/U;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/friends/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/friends/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/appwidget/friends/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/appwidget/friends/a;->d:J

    return-wide v0
.end method


# virtual methods
.method public b()V
    .locals 6

    :try_start_0
    new-instance v1, Law/e;

    sget-object v0, Ls/T;->z:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->b:Lo/U;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/a;->b:Lo/U;

    invoke-virtual {v2}, Lo/U;->a()Lcom/google/googlenav/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILaw/e;)V

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/googlenav/appwidget/friends/a;->e:Z

    invoke-virtual {v1, v0, v2}, Law/e;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v0}, Lo/U;->a()Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Law/e;->a(ILaw/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v1, v2}, Ln/a;->a(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v0, v3}, Law/e;->a(I[B)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Law/e;->a(I[B)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v0, v3}, Law/e;->a(I[B)V

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lcom/google/googlenav/appwidget/friends/a;->d:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/googlenav/appwidget/friends/a;->d:J

    invoke-virtual {v1, v0, v2, v3}, Law/e;->a(IJ)V

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v1, v0, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public c()Lo/U;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/a;->b:Lo/U;

    return-object v0
.end method
