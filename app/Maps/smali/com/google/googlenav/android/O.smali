.class public Lcom/google/googlenav/android/O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field private final a:Lcom/google/googlenav/android/ag;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/android/ad;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ag;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/O;->a:Lcom/google/googlenav/android/ag;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/O;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/android/O;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/android/t;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/t;-><init>(Lcom/google/googlenav/android/ag;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/O;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/android/p;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/p;-><init>(Lcom/google/googlenav/android/ag;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/O;->c:Lcom/google/googlenav/android/ad;

    iget-object v0, p0, Lcom/google/googlenav/android/O;->c:Lcom/google/googlenav/android/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/android/ad;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/android/O;->ay_()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/O;->c:Lcom/google/googlenav/android/ad;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/ad;->a(Lcom/google/googlenav/android/M;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/O;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/V;

    invoke-interface {p0, p1}, Lcom/google/googlenav/android/V;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lcom/google/googlenav/android/V;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/O;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public ay_()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
