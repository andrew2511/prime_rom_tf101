.class public LN/d;
.super LN/j;


# static fields
.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    sget-char v2, Lcom/google/googlenav/ui/aV;->aP:C

    aput-char v2, v0, v1

    const/4 v1, 0x1

    sget-char v2, Lcom/google/googlenav/ui/aV;->aQ:C

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-char v2, Lcom/google/googlenav/ui/aV;->aR:C

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-char v2, Lcom/google/googlenav/ui/aV;->aS:C

    aput-char v2, v0, v1

    sput-object v0, LN/d;->c:[C

    return-void
.end method

.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, LN/j;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/aG;
    .locals 3

    iget-object v0, p0, LN/d;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->aa()Lk/j;

    move-result-object v0

    sget-object v1, LN/d;->c:[C

    rem-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aG;->a(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
