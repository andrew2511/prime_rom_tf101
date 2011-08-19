.class public Lb/x;
.super Lb/b;


# static fields
.field public static final a:Lb/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/x;

    invoke-direct {v0}, Lb/x;-><init>()V

    sput-object v0, Lb/x;->a:Lb/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "WAIT_FOR_ACTIVITY_STATE"

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/x;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->c()V

    iget-object v0, p0, Lb/x;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->d(I)V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lb/x;->e:Lcom/google/android/maps/driveabout/app/Q;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/x;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lb/x;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->a(Z)V

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/x;->g()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lb/x;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/x;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/x;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Lcom/google/android/maps/driveabout/app/bX;)V

    :cond_0
    iget-object v0, p0, Lb/x;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/x;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->c()V

    :cond_1
    return-void
.end method
