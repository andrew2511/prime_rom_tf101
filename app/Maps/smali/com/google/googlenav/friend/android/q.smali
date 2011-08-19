.class public Lcom/google/googlenav/friend/android/q;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cb;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/android/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/q;->b:Landroid/location/Location;

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lo/aX;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/aX;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->p(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private a(Law/e;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/q;->b:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/q;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Law/e;ZLaw/e;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/q;->a(Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/q;->a:Landroid/content/Context;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;J)V

    return-void
.end method
