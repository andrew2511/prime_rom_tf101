.class Lm/P;
.super Lm/p;


# instance fields
.field private a:Lm/p;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lm/p;-><init>()V

    iput-object p1, p0, Lm/P;->b:Ljava/lang/String;

    iput-object p2, p0, Lm/P;->c:Ljava/io/File;

    iput-object p3, p0, Lm/P;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lm/P;Lm/p;)Lm/p;
    .locals 0

    iput-object p1, p0, Lm/P;->a:Lm/p;

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lm/P;->e:I

    iget-object v0, p0, Lm/P;->a:Lm/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/P;->a:Lm/p;

    invoke-virtual {v0, p1}, Lm/p;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lm/I;)V
    .locals 2

    iget-object v0, p0, Lm/P;->c:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "AlertGenerator"

    const-string v1, "mFile=null"

    invoke-static {v0, v1}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lm/I;->a(Lm/p;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lm/P;->c:Ljava/io/File;

    iget-object v1, p0, Lm/P;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lm/q;->a(Ljava/io/File;Landroid/os/Handler;)Lm/p;

    move-result-object v0

    iput-object v0, p0, Lm/P;->a:Lm/p;

    iget-object v0, p0, Lm/P;->a:Lm/p;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lm/I;->a(Lm/p;)V

    :goto_1
    iget v0, p0, Lm/P;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm/P;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm/P;->a:Lm/p;

    iget v1, p0, Lm/P;->e:I

    invoke-virtual {v0, v1}, Lm/p;->a(I)V

    iget-object v0, p0, Lm/P;->a:Lm/p;

    new-instance v1, Lm/d;

    invoke-direct {v1, p0, p1}, Lm/d;-><init>(Lm/P;Lm/I;)V

    invoke-virtual {v0, v1}, Lm/p;->a(Lm/I;)V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lm/P;->c:Ljava/io/File;

    iput-object v0, p0, Lm/P;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm/P;->b:Ljava/lang/String;

    return-object v0
.end method
