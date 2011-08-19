.class public Lcom/google/googlenav/ui/H;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lf/h;

.field private d:Lf/h;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/h;)Lcom/google/googlenav/ui/H;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/H;->c:Lf/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/H;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/H;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/google/googlenav/ui/bk;
    .locals 7

    new-instance v0, Lcom/google/googlenav/ui/bk;

    iget-object v1, p0, Lcom/google/googlenav/ui/H;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/H;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/H;->c:Lf/h;

    iget-object v4, p0, Lcom/google/googlenav/ui/H;->d:Lf/h;

    iget-object v5, p0, Lcom/google/googlenav/ui/H;->e:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/bk;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Lf/h;Ljava/lang/String;Lcom/google/googlenav/ui/L;)V

    return-object v0
.end method

.method public b(Lf/h;)Lcom/google/googlenav/ui/H;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/H;->d:Lf/h;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/H;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/H;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/ui/H;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/H;->e:Ljava/lang/String;

    return-object p0
.end method
