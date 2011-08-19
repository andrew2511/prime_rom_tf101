.class public abstract Lah/B;
.super LaT/d;


# instance fields
.field protected b:Ljava/lang/String;

.field private c:Landroid/location/Location;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, LaT/d;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lah/B;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lah/B;->g:J

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Landroid/location/Location;
    .locals 2

    invoke-virtual {p0}, Lah/B;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LaT/f;

    instance-of v1, p0, Lah/t;

    if-eqz v1, :cond_0

    check-cast p0, Lah/t;

    invoke-virtual {p0}, Lah/t;->a()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lah/B;->c:Landroid/location/Location;

    iput-object v0, p0, Lah/B;->e:Landroid/location/Location;

    invoke-direct {p0}, Lah/B;->f()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lah/B;->d:Landroid/location/Location;

    invoke-super {p0, p1}, LaT/d;->a(Ljava/io/File;)V

    return-void
.end method

.method protected b(Ljava/io/BufferedWriter;)V
    .locals 2

    iget-object v0, p0, Lah/B;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<destination uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lah/B;->b:Ljava/lang/String;

    invoke-static {v1}, Lah/B;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v0, "</event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lah/B;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lah/B;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
