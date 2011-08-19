.class public final Li;
.super Lb;


# instance fields
.field private d:LO;

.field private e:LE;

.field private f:Landroid/content/Context;

.field private final g:La;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Li;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lb;-><init>()V

    new-instance v0, Lh;

    invoke-direct {v0}, Lh;-><init>()V

    iput-object v0, p0, Li;->g:La;

    iput-object p1, p0, Li;->f:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {p0}, Li;->a(Lb;)V

    invoke-virtual {p0}, Li;->b()V

    sput-boolean v1, Li;->b:Z

    sput-boolean v1, Li;->c:Z

    const/4 v0, 0x4

    sput v0, Li;->a:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Li;->f:Landroid/content/Context;

    if-nez v1, :cond_1

    new-instance v0, LC;

    invoke-direct {v0}, LC;-><init>()V

    iput-object v0, p0, Li;->e:LE;

    :goto_0
    new-instance v0, LO;

    iget-object v1, p0, Li;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, LO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li;->d:LO;

    new-instance v0, Ls;

    invoke-direct {v0}, Ls;-><init>()V

    new-instance v0, Lt;

    iget-object v1, p0, Li;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Li;->e()Ld;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Li;->e()Ld;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    new-instance v1, LI;

    invoke-direct {v1, v0}, LI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Li;->e:LE;

    goto :goto_0

    :cond_2
    new-instance v0, LQ;

    iget-object v1, p0, Li;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, LQ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li;->e:LE;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Li;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected final c()V
    .locals 1

    new-instance v0, Lj;

    invoke-direct {v0, p0}, Lj;-><init>(Li;)V

    invoke-static {v0}, Lz;->a(LA;)V

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 3

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Li;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Web"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gmm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic f()LB;
    .locals 1

    iget-object v0, p0, Li;->d:LO;

    return-object v0
.end method

.method public final g()LE;
    .locals 1

    iget-object v0, p0, Li;->e:LE;

    return-object v0
.end method

.method public final h()La;
    .locals 1

    iget-object v0, p0, Li;->g:La;

    return-object v0
.end method
