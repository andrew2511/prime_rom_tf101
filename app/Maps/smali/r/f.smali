.class public Lr/f;
.super Lr/i;


# static fields
.field public static final a:Lr/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/f;

    invoke-direct {v0}, Lr/f;-><init>()V

    sput-object v0, Lr/f;->a:Lr/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Report Quality Feedback"

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 2

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lak/h;->f(Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aJ()Lcom/google/googlenav/ui/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ak;->a()Lcom/google/googlenav/ui/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bU;->b()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lak/h;->f(Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aJ()Lcom/google/googlenav/ui/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ak;->a()Lcom/google/googlenav/ui/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bU;->b()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Adds a \"Report Quality Feedback\" option under the main menu toreport problems to gmm-search-feedback@google.com. Internal only."

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Michelle C."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method
