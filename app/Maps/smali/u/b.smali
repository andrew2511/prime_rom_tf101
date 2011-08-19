.class public Lu/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lu/v;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu/b;->a:Lu/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lu/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lu/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->e:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lu/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lu/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lu/b;->d:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lu/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method
