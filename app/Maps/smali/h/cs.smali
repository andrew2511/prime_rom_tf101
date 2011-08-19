.class public Lh/cs;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lh/cN;

.field private final b:Lh/k;

.field private final c:Lh/dM;

.field private final d:Lh/dh;

.field private final e:Lh/eY;

.field private final f:Lh/az;

.field private g:Lcom/google/googlenav/h;

.field private h:Lh/p;


# direct methods
.method public constructor <init>(Lh/eY;Lh/k;Lh/dM;Lh/dh;Lh/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/cs;->e:Lh/eY;

    iput-object p4, p0, Lh/cs;->d:Lh/dh;

    iput-object p2, p0, Lh/cs;->b:Lh/k;

    iput-object p3, p0, Lh/cs;->c:Lh/dM;

    iput-object p5, p0, Lh/cs;->h:Lh/p;

    new-instance v0, Lh/K;

    invoke-direct {v0, p0}, Lh/K;-><init>(Lh/cs;)V

    iput-object v0, p0, Lh/cs;->a:Lh/cN;

    new-instance v0, Lh/az;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/az;-><init>(Lh/cs;Lh/cZ;)V

    iput-object v0, p0, Lh/cs;->f:Lh/az;

    iget-object v0, p0, Lh/cs;->b:Lh/k;

    iget-object v1, p0, Lh/cs;->f:Lh/az;

    invoke-virtual {v0, v1}, Lh/k;->a(Lh/at;)V

    return-void
.end method

.method static synthetic a(Lh/cs;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lh/cs;->e:Lh/eY;

    return-object v0
.end method

.method static synthetic b(Lh/cs;)Lh/dM;
    .locals 1

    iget-object v0, p0, Lh/cs;->c:Lh/dM;

    return-object v0
.end method

.method static synthetic c(Lh/cs;)Lcom/google/googlenav/h;
    .locals 1

    iget-object v0, p0, Lh/cs;->g:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic d(Lh/cs;)Lh/k;
    .locals 1

    iget-object v0, p0, Lh/cs;->b:Lh/k;

    return-object v0
.end method

.method static synthetic e(Lh/cs;)Lh/p;
    .locals 1

    iget-object v0, p0, Lh/cs;->h:Lh/p;

    return-object v0
.end method

.method static synthetic f(Lh/cs;)Lh/dh;
    .locals 1

    iget-object v0, p0, Lh/cs;->d:Lh/dh;

    return-object v0
.end method


# virtual methods
.method public a()Lh/cN;
    .locals 1

    iget-object v0, p0, Lh/cs;->a:Lh/cN;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/h;)V
    .locals 2

    iput-object p1, p0, Lh/cs;->g:Lcom/google/googlenav/h;

    iget-object v0, p0, Lh/cs;->c:Lh/dM;

    const/16 v1, 0x453

    invoke-virtual {v0, v1}, Lh/dM;->a(I)V

    iget-object v0, p0, Lh/cs;->b:Lh/k;

    invoke-virtual {v0}, Lh/k;->a()V

    return-void
.end method

.method public b(Lcom/google/googlenav/h;)V
    .locals 1

    iput-object p1, p0, Lh/cs;->g:Lcom/google/googlenav/h;

    iget-object v0, p0, Lh/cs;->c:Lh/dM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cs;->c:Lh/dM;

    invoke-virtual {v0, p1}, Lh/dM;->a(Lcom/google/googlenav/h;)V

    :cond_0
    return-void
.end method
