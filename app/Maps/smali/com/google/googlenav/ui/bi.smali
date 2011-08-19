.class public Lcom/google/googlenav/ui/bi;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lk/l;

.field public final b:Lx/Q;

.field public final c:Lcom/google/googlenav/ui/aH;

.field public final d:Lcom/google/googlenav/ui/aj;


# direct methods
.method private constructor <init>(Lk/l;Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/googlenav/ui/bi;->b:Lx/Q;

    iput-object p1, p0, Lcom/google/googlenav/ui/bi;->a:Lk/l;

    iput-object p2, p0, Lcom/google/googlenav/ui/bi;->c:Lcom/google/googlenav/ui/aH;

    iput-object p3, p0, Lcom/google/googlenav/ui/bi;->d:Lcom/google/googlenav/ui/aj;

    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bi;

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/google/googlenav/ui/bi;-><init>(Lk/l;Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)Lcom/google/googlenav/ui/bi;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bi;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/googlenav/ui/bi;-><init>(Lk/l;Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bi;

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/bi;->b(Ljava/lang/String;Lk/j;)Lk/l;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlenav/ui/bi;-><init>(Lk/l;Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lk/j;Lx/Q;)Lcom/google/googlenav/ui/bi;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bi;

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/bi;->b(Ljava/lang/String;Lk/j;)Lk/l;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/google/googlenav/ui/bi;-><init>(Lk/l;Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Lk/l;)Lcom/google/googlenav/ui/bi;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bi;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/googlenav/ui/bi;-><init>(Lk/l;Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lk/j;)Lk/l;
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method
