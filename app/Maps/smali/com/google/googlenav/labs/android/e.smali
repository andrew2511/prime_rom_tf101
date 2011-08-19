.class public Lcom/google/googlenav/labs/android/e;
.super Lr/i;


# static fields
.field public static final a:Lcom/google/googlenav/labs/android/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/labs/android/e;

    invoke-direct {v0}, Lcom/google/googlenav/labs/android/e;-><init>()V

    sput-object v0, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

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

    const/16 v0, 0x291

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 2

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aC()LE/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LE/i;->a(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x290

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Ole C."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method
