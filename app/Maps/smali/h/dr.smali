.class public Lh/dr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lh/eF;

.field private c:Lh/bX;

.field private d:Lh/O;

.field private e:Lh/af;

.field private f:Lh/fK;


# direct methods
.method public constructor <init>(Ljava/util/List;Lh/eF;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/dr;->a:Ljava/util/List;

    iput-object p2, p0, Lh/dr;->b:Lh/eF;

    new-instance v0, Lh/bX;

    invoke-direct {v0, p0}, Lh/bX;-><init>(Lh/dr;)V

    iput-object v0, p0, Lh/dr;->c:Lh/bX;

    new-instance v0, Lh/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/O;-><init>(Lh/dr;Lh/x;)V

    iput-object v0, p0, Lh/dr;->d:Lh/O;

    new-instance v0, Lh/fK;

    invoke-direct {v0}, Lh/fK;-><init>()V

    iput-object v0, p0, Lh/dr;->f:Lh/fK;

    iget-object v0, p0, Lh/dr;->f:Lh/fK;

    iget-object v1, p0, Lh/dr;->d:Lh/O;

    invoke-virtual {v0, v1}, Lh/fK;->a(Lh/fA;)V

    return-void
.end method

.method static synthetic a(Lh/dr;)Lh/af;
    .locals 1

    iget-object v0, p0, Lh/dr;->e:Lh/af;

    return-object v0
.end method

.method static synthetic b(Lh/dr;)Lh/eF;
    .locals 1

    iget-object v0, p0, Lh/dr;->b:Lh/eF;

    return-object v0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    invoke-static {}, Lh/dr;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lh/dr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lh/dr;->a:Ljava/util/List;

    return-object v0
.end method

.method private static d()Ljava/util/List;
    .locals 2

    invoke-static {}, Lo/d;->g()Lo/d;

    move-result-object v0

    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v1

    invoke-static {v0, v1}, Lj/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lh/bX;
    .locals 1

    iget-object v0, p0, Lh/dr;->c:Lh/bX;

    return-object v0
.end method

.method public a(Lh/af;)V
    .locals 0

    iput-object p1, p0, Lh/dr;->e:Lh/af;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lh/dr;->e:Lh/af;

    invoke-virtual {v0}, Lh/af;->c()V

    iget-object v0, p0, Lh/dr;->f:Lh/fK;

    invoke-virtual {v0}, Lh/fK;->a()V

    return-void
.end method
