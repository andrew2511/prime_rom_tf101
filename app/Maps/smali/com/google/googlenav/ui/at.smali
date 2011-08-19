.class public Lcom/google/googlenav/ui/at;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/aT;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/at;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-virtual {v3}, Lcom/google/googlenav/labs/android/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lf/h;)Z
    .locals 6

    const/16 v5, 0x295

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aC()LE/i;

    move-result-object v0

    invoke-interface {v0, v1}, LE/i;->b(I)I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x296

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    const-string v0, "max10"

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aC()LE/i;

    move-result-object v0

    invoke-interface {v0, p1, v1}, LE/i;->a(Lf/h;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28e

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    const-string v0, "dup"

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lf/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/at;->a(Lf/h;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->h()Lf/Y;

    move-result-object v0

    invoke-virtual {v0, v4}, Lf/Y;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->h()Lf/Y;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->a(Lf/l;)V

    invoke-static {p2, p3}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x43f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x293

    :goto_1
    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aC()LE/i;

    move-result-object v3

    invoke-interface {v3, p1, v6, v0}, LE/i;->a(Lf/h;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aC()LE/i;

    move-result-object v3

    invoke-interface {v3, v6}, LE/i;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0, v6}, Li/x;->a(B)V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    new-instance v3, Lh/fc;

    invoke-direct {v3, v4}, Lh/fc;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/at;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->r()LE/f;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aD;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/aD;-><init>(Lcom/google/googlenav/ui/at;Lf/h;)V

    invoke-interface {v0, p1, v1}, LE/f;->a(Lf/h;LE/d;)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x294

    goto :goto_1
.end method
