.class LaD/u;
.super LT/d;


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:LaD/r;

.field private final c:LaD/o;


# direct methods
.method public constructor <init>(LT/c;Ljava/util/Vector;LaD/r;LaD/o;)V
    .locals 0

    invoke-direct {p0, p1}, LT/d;-><init>(LT/c;)V

    iput-object p2, p0, LaD/u;->a:Ljava/util/Vector;

    iput-object p3, p0, LaD/u;->b:LaD/r;

    iput-object p4, p0, LaD/u;->c:LaD/o;

    return-void
.end method


# virtual methods
.method public a(LaD/j;)LaD/q;
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-virtual {p1}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHOTO_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Law/e;

    sget-object v2, Ls/T;->w:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {p1, v0, v1, v2, v3}, LaD/q;->a(LaD/j;ILaw/e;II)LaD/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, LaD/q;->f()Lk/l;

    move-result-object v1

    invoke-interface {v1}, Lk/l;->f()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    const-string v2, "PHOTO_LOAD-PhotoLoadFromDiskTask failed to load photo"

    invoke-static {v2, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LaD/u;->b:LaD/r;

    invoke-static {v0}, LaD/r;->g(LaD/r;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_1
.end method

.method public a()V
    .locals 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, LaD/u;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v0, p0, LaD/u;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/j;

    invoke-virtual {p0, v0}, LaD/u;->a(LaD/j;)LaD/q;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, LaD/u;->c:LaD/o;

    invoke-interface {v0, v4}, LaD/o;->a(LaD/q;)V

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v4, p0, LaD/u;->c:LaD/o;

    invoke-interface {v4, v0}, LaD/o;->a(LaD/j;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LaD/u;->c:LaD/o;

    invoke-interface {v0, v1}, LaD/o;->a(Ljava/util/Vector;)V

    return-void
.end method
