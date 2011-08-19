.class public LaD/t;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;


# instance fields
.field private final a:LaU/a;

.field private final b:LT/c;

.field private c:LaD/r;

.field private d:LaD/r;

.field private e:LaD/p;


# direct methods
.method public constructor <init>(LaU/a;LT/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/t;->a:LaU/a;

    iput-object p2, p0, LaD/t;->b:LT/c;

    return-void
.end method


# virtual methods
.method public a()LaD/r;
    .locals 5

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LaD/t;->c:LaD/r;

    if-nez v0, :cond_0

    new-instance v0, LaD/r;

    iget-object v1, p0, LaD/t;->a:LaU/a;

    iget-object v2, p0, LaD/t;->b:LT/c;

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v0, v1, v2, v3, v4}, LaD/r;-><init>(LaU/a;LT/c;ZI)V

    iput-object v0, p0, LaD/t;->c:LaD/r;

    :cond_0
    iget-object v0, p0, LaD/t;->c:LaD/r;

    return-object v0
.end method

.method public ap()LA/c;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, LaD/t;->c:LaD/r;

    if-eqz v1, :cond_0

    new-instance v1, LA/c;

    const-string v2, "friend profile photos"

    iget-object v3, p0, LaD/t;->c:LaD/r;

    invoke-virtual {v3}, LaD/r;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, LaD/t;->d:LaD/r;

    if-eqz v1, :cond_1

    new-instance v1, LA/c;

    const-string v2, "buzz profile photos"

    iget-object v3, p0, LaD/t;->d:LaD/r;

    invoke-virtual {v3}, LaD/r;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, LaD/t;->e:LaD/p;

    if-eqz v1, :cond_2

    new-instance v1, LA/c;

    const-string v2, "buzz attached photos"

    iget-object v3, p0, LaD/t;->e:LaD/p;

    invoke-virtual {v3}, LaD/p;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x0

    new-instance v2, LA/c;

    const-string v3, "PhotoManager"

    invoke-direct {v2, v3, v1, v0}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    return-object v2
.end method

.method public b()LaD/r;
    .locals 5

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LaD/t;->d:LaD/r;

    if-nez v0, :cond_0

    new-instance v0, LaD/r;

    iget-object v1, p0, LaD/t;->a:LaU/a;

    iget-object v2, p0, LaD/t;->b:LT/c;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, LaD/r;-><init>(LaU/a;LT/c;ZI)V

    iput-object v0, p0, LaD/t;->d:LaD/r;

    :cond_0
    iget-object v0, p0, LaD/t;->d:LaD/r;

    return-object v0
.end method

.method public c()LaD/p;
    .locals 3

    iget-object v0, p0, LaD/t;->e:LaD/p;

    if-nez v0, :cond_0

    new-instance v0, LaD/p;

    const/16 v1, 0x64

    iget-object v2, p0, LaD/t;->a:LaU/a;

    invoke-direct {v0, v1, v2}, LaD/p;-><init>(ILaU/a;)V

    iput-object v0, p0, LaD/t;->e:LaD/p;

    :cond_0
    iget-object v0, p0, LaD/t;->e:LaD/p;

    return-object v0
.end method
