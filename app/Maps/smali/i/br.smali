.class public Li/br;
.super Ljava/lang/Object;


# instance fields
.field private final a:LT/c;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(LT/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Li/br;->b:Ljava/util/Map;

    iput-object p1, p0, Li/br;->a:LT/c;

    return-void
.end method

.method static synthetic a(Li/br;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Li/br;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/j;Li/o;LaU/a;)V
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Li/aj;

    invoke-direct {v0, p0, p2, p1}, Li/aj;-><init>(Li/br;Li/o;Lcom/google/googlenav/j;)V

    invoke-interface {p3, v0}, LaU/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2, p1}, Li/o;->a(Lcom/google/googlenav/j;)V

    goto :goto_0
.end method

.method static synthetic a(Li/br;Lcom/google/googlenav/j;Li/o;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li/br;->a(Lcom/google/googlenav/j;Li/o;LaU/a;)V

    return-void
.end method

.method static synthetic a(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Li/br;->b(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ln/a;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKGROUND_FEATURE_SET_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "SAVED_BGFS_"

    invoke-interface {p0, v0}, Ln/a;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILaU/a;Li/o;)V
    .locals 6

    iget-object v0, p0, Li/br;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/j;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p3, p2}, Li/br;->a(Lcom/google/googlenav/j;Li/o;LaU/a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Li/ak;

    iget-object v2, p0, Li/br;->a:LT/c;

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Li/ak;-><init>(Li/br;LT/c;ILi/o;LaU/a;)V

    invoke-virtual {v0}, Li/ak;->b()V

    goto :goto_0
.end method

.method public a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V
    .locals 7

    new-instance v0, Li/al;

    iget-object v2, p0, Li/br;->a:LT/c;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Li/al;-><init>(Li/br;LT/c;ILcom/google/googlenav/j;Li/aD;LaU/a;)V

    invoke-virtual {v0}, Li/al;->b()V

    return-void
.end method
