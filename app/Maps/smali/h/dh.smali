.class public Lh/dh;
.super Ljava/lang/Object;


# instance fields
.field private final a:Li/br;

.field private final b:LaU/a;


# direct methods
.method public constructor <init>(Li/br;LaU/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/dh;->a:Li/br;

    iput-object p2, p0, Lh/dh;->b:LaU/a;

    return-void
.end method

.method static synthetic a(Lh/dh;)LaU/a;
    .locals 1

    iget-object v0, p0, Lh/dh;->b:LaU/a;

    return-object v0
.end method

.method private a(Lh/H;)V
    .locals 2

    iget-object v0, p0, Lh/dh;->b:LaU/a;

    new-instance v1, Lh/bG;

    invoke-direct {v1, p0, p1}, Lh/bG;-><init>(Lh/dh;Lh/H;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lh/dh;Lh/H;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/dh;->a(Lh/H;)V

    return-void
.end method

.method static synthetic b(Lh/dh;)Li/br;
    .locals 1

    iget-object v0, p0, Lh/dh;->a:Li/br;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;Lh/H;)V
    .locals 4

    invoke-static {}, Lo/A;->H()V

    iget-object v0, p0, Lh/dh;->a:Li/br;

    const/4 v1, 0x3

    iget-object v2, p0, Lh/dh;->b:LaU/a;

    new-instance v3, Lh/bH;

    invoke-direct {v3, p0, p2}, Lh/bH;-><init>(Lh/dh;Lh/H;)V

    invoke-virtual {v0, v1, v2, v3}, Li/br;->a(ILaU/a;Li/o;)V

    return-void
.end method
