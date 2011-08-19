.class public Lcom/google/googlenav/bJ;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lac/h;


# instance fields
.field private a:Lac/c;

.field private b:Lcom/google/googlenav/ar;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lac/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lac/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/bJ;->a:Lac/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/X;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/bJ;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/bJ;
    .locals 1

    sget-object v0, Lcom/google/googlenav/bn;->a:Lcom/google/googlenav/bJ;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bJ;->b:Lcom/google/googlenav/ar;

    return-void
.end method

.method public a(Lcom/google/googlenav/c;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bJ;->a:Lac/c;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/googlenav/bJ;->b:Lcom/google/googlenav/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bJ;->b:Lcom/google/googlenav/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/ar;->a(Lcom/google/googlenav/c;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bJ;->a:Lac/c;

    invoke-virtual {v0}, Lac/c;->b()V

    return-void
.end method

.method public a(Lcom/google/googlenav/c;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/bJ;->a:Lac/c;

    invoke-virtual {v1, v0}, Lac/c;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/bJ;->a:Lac/c;

    invoke-virtual {v1, v0}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-virtual {p1, p0}, Lcom/google/googlenav/c;->g(Law/e;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ap()LA/c;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/bJ;->a:Lac/c;

    invoke-virtual {v0}, Lac/c;->d()Ljava/util/Vector;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-virtual {v0}, Law/e;->e()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, LA/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
