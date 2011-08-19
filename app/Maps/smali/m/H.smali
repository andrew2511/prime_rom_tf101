.class Lm/H;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lm/l;

.field private final b:Lm/w;

.field private c:Lm/v;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Lm/l;Lm/w;Lm/v;)V
    .locals 0

    iput-object p1, p0, Lm/H;->a:Lm/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/H;->b:Lm/w;

    iput-object p3, p0, Lm/H;->c:Lm/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/H;->a(Lm/p;)V

    iget-object v0, p0, Lm/H;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/H;->a:Lm/l;

    invoke-static {v0}, Lm/l;->a(Lm/l;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lm/H;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lm/H;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lm/H;->d:Ljava/lang/String;

    iput-object p2, p0, Lm/H;->e:Ljava/io/File;

    return-void
.end method

.method public a(Lm/p;)V
    .locals 2

    iget-object v0, p0, Lm/H;->c:Lm/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/H;->c:Lm/v;

    iget-object v1, p0, Lm/H;->b:Lm/w;

    invoke-interface {v0, v1, p1}, Lm/v;->a(Lm/w;Lm/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/H;->c:Lm/v;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm/H;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm/H;->b:Lm/w;

    invoke-virtual {v0}, Lm/w;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lm/P;
    .locals 4

    iget-object v0, p0, Lm/H;->e:Ljava/io/File;

    invoke-static {v0}, Lm/l;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm/H;->a()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lm/P;

    iget-object v1, p0, Lm/H;->d:Ljava/lang/String;

    iget-object v2, p0, Lm/H;->e:Ljava/io/File;

    iget-object v3, p0, Lm/H;->a:Lm/l;

    invoke-static {v3}, Lm/l;->b(Lm/l;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lm/P;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V

    goto :goto_0
.end method
