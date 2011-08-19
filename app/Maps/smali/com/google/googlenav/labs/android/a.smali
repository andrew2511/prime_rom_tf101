.class public Lcom/google/googlenav/labs/android/a;
.super Lr/i;


# static fields
.field public static final a:Lcom/google/googlenav/labs/android/a;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/googlenav/labs/android/a;

    invoke-direct {v0}, Lcom/google/googlenav/labs/android/a;-><init>()V

    sput-object v0, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/labs/android/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/i;-><init>()V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aM()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d7

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/labs/android/a;->b(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/labs/android/a;->b(Lcom/google/googlenav/ui/aT;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

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

    const-string v0, "Danny E."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method
