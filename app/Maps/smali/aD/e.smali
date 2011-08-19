.class LaD/e;
.super LT/d;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:LaD/r;


# direct methods
.method constructor <init>(LaD/r;LT/c;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, LaD/e;->b:LaD/r;

    iput-object p3, p0, LaD/e;->a:Ljava/util/Vector;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v1

    :try_start_0
    new-instance v2, Law/e;

    sget-object v0, Ls/T;->u:Law/f;

    invoke-direct {v2, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x0

    iget-object v3, p0, LaD/e;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    iget-object v0, p0, LaD/e;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/j;

    const/4 v5, 0x1

    invoke-virtual {v0}, LaD/j;->c()Law/e;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Law/e;->f()[B

    move-result-object v0

    const-string v2, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v1, v0, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE_PROFILE_PHOTO_MANAGER_IMP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, LaD/r;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t save photo index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LaD/e;->b:LaD/r;

    invoke-static {v0}, LaD/r;->g(LaD/r;)V

    goto :goto_1
.end method
