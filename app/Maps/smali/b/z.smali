.class Lb/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/dK;


# instance fields
.field final synthetic a:Lb/k;

.field private final b:Lcom/google/android/maps/driveabout/app/W;


# direct methods
.method public constructor <init>(Lb/k;Lcom/google/android/maps/driveabout/app/W;)V
    .locals 0

    iput-object p1, p0, Lb/z;->a:Lb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/z;->b:Lcom/google/android/maps/driveabout/app/W;

    return-void
.end method

.method private a()Z
    .locals 3

    iget-object v0, p0, Lb/z;->a:Lb/k;

    iget-object v0, v0, Lb/k;->c:Landroid/content/Context;

    const-string v1, "RmiMail"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lb/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lb/z;->b:Lcom/google/android/maps/driveabout/app/W;

    new-instance v2, Lb/r;

    iget-object v3, p0, Lb/z;->a:Lb/k;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lb/r;-><init>(Lb/k;Lb/l;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/W;->a(ZLaH/b;)V

    :cond_0
    iget-object v0, p0, Lb/z;->a:Lb/k;

    iget-object v0, v0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/e;->e(Z)V

    return-void

    :cond_1
    move v0, v5

    goto :goto_0
.end method
