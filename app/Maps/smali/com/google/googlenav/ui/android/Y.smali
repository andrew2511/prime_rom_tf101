.class public Lcom/google/googlenav/ui/android/Y;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/ui/android/Y;


# instance fields
.field private final b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/Y;->b()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/android/Y;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/android/Y;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/Y;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/Y;

    return-object v0
.end method

.method private a(Lax/e;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .locals 7

    const v6, 0x7f0201f6

    const v5, 0x7f0201f0

    const v4, 0x7f02028a

    const v3, 0x7f0201fe

    const v2, 0x7f02020a

    sget-object v0, Lcom/google/googlenav/ui/w;->r:Lax/e;

    const v1, 0x7f02020f

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ah:Lax/e;

    const v1, 0x7f0201f4

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ai:Lax/e;

    const v1, 0x7f02020c

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->n:Lax/e;

    const v1, 0x7f02020c

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ar:Lax/e;

    invoke-direct {p0, v0, v6}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->as:Lax/e;

    invoke-direct {p0, v0, v6}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->aj:Lax/e;

    const v1, 0x7f02020b

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->an:Lax/e;

    const v1, 0x7f020213

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ao:Lax/e;

    const v1, 0x7f020213

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->at:Lax/e;

    const v1, 0x7f020209

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->R:Lax/e;

    const v1, 0x7f02020d

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->t:Lax/e;

    const v1, 0x7f0201fc

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->y:Lax/e;

    const v1, 0x7f0201e9

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->v:Lax/e;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->u:Lax/e;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->A:Lax/e;

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->D:Lax/e;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->E:Lax/e;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->X:Lax/e;

    const v1, 0x7f0201ff

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->av:Lax/e;

    const v1, 0x108003c

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->w:Lax/e;

    const v1, 0x7f020210

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->x:Lax/e;

    const v1, 0x7f020210

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->p:Lax/e;

    const v1, 0x7f0201f3

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->S:Lax/e;

    const v1, 0x7f020211

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->T:Lax/e;

    const v1, 0x7f020214

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->F:Lax/e;

    const v1, 0x7f02020e

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->G:Lax/e;

    const v1, 0x7f0201f5

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->Q:Lax/e;

    const v1, 0x7f020201

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->I:Lax/e;

    const v1, 0x7f020203

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->H:Lax/e;

    const v1, 0x7f020207

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ak:Lax/e;

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->al:Lax/e;

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->am:Lax/e;

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->au:Lax/e;

    const v1, 0x7f0201f9

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->aq:Lax/e;

    const v1, 0x7f0201ef

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->U:Lax/e;

    const v1, 0x7f0201fd

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ap:Lax/e;

    const v1, 0x7f020212

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->ae:Lax/e;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->V:Lax/e;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->aa:Lax/e;

    const v1, 0x7f0201fa

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    sget-object v0, Lcom/google/googlenav/ui/w;->Z:Lax/e;

    const v1, 0x7f0201f1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/w;->q:Lax/e;

    const v1, 0x7f02020f

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;I)V

    return-void
.end method


# virtual methods
.method public a(Lax/e;)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Lax/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
