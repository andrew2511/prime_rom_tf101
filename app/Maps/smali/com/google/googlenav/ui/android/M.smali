.class Lcom/google/googlenav/ui/android/M;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MenuItem;Lax/e;)V
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/w;->F:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->Q:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->H:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->G:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/googlenav/ui/w;->S:Lax/e;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method
