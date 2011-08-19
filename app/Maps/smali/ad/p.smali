.class public Lad/p;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field private volatile a:I

.field private final b:Lak/h;


# direct methods
.method public constructor <init>(Lak/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lad/p;->a:I

    iput-object p1, p0, Lad/p;->b:Lak/h;

    return-void
.end method

.method private a()V
    .locals 7

    new-instance v0, LaT/b;

    iget v1, p0, Lad/p;->a:I

    iget-object v2, p0, Lad/p;->b:Lak/h;

    invoke-virtual {v2}, Lak/h;->p()I

    move-result v2

    iget-object v3, p0, Lad/p;->b:Lak/h;

    invoke-virtual {v3}, Lak/h;->q()I

    move-result v3

    iget-object v4, p0, Lad/p;->b:Lak/h;

    invoke-virtual {v4}, Lak/h;->m()J

    move-result-wide v4

    iget-object v6, p0, Lad/p;->b:Lak/h;

    invoke-virtual {v6}, Lak/h;->r()I

    move-result v6

    invoke-direct/range {v0 .. v6}, LaT/b;-><init>(IIIJI)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 1

    new-instance v0, LaT/a;

    invoke-direct {v0, p1, p2}, LaT/a;-><init>(IZ)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    invoke-direct {p0}, Lad/p;->a()V

    return-void
.end method

.method public a(Lak/d;)V
    .locals 2

    new-instance v0, LaT/g;

    const-string v1, "onComplete"

    invoke-direct {v0, v1, p1}, LaT/g;-><init>(Ljava/lang/String;Lak/d;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget v0, p0, Lad/p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lad/p;->a:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    invoke-direct {p0}, Lad/p;->a()V

    :cond_0
    return-void
.end method

.method public b(Lak/d;)V
    .locals 0

    return-void
.end method
