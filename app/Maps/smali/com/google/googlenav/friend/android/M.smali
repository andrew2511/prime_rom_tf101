.class public Lcom/google/googlenav/friend/android/M;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/location/Location;

.field private c:Z

.field private d:Landroid/location/Location;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/util/List;

.field private k:J

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LA/n;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/android/M;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/M;->d:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->o(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/M;->b:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->m(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/M;->c:Z

    const/4 v0, 0x1

    invoke-static {v0, v2}, Lo/aX;->a(ZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->e:J

    invoke-static {v2, v2}, Lo/aX;->a(ZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->f:J

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->j(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->h:J

    invoke-static {}, Lo/aX;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->i:J

    invoke-static {p1, p2}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Landroid/location/Location;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->g:J

    iput-object p3, p0, Lcom/google/googlenav/friend/android/M;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->i(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->k:J

    invoke-static {}, Lo/aX;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/M;->l:Z

    invoke-static {}, Lo/aX;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/M;->m:J

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/M;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/M;->b:Landroid/location/Location;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/friend/android/M;->c:Z

    return v0
.end method

.method public d()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/M;->d:Landroid/location/Location;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/friend/android/M;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/friend/android/M;->f:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/friend/android/M;->g:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/friend/android/M;->k:J

    return-wide v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/M;->j:Ljava/util/List;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/friend/android/M;->l:Z

    return v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/friend/android/M;->m:J

    return-wide v0
.end method
