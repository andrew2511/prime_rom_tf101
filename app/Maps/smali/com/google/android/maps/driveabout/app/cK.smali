.class Lcom/google/android/maps/driveabout/app/cK;
.super Lad/i;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/eC;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/dz;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/eC;Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cK;->c:Lcom/google/android/maps/driveabout/app/NavigationService;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cK;->a:Lcom/google/android/maps/driveabout/app/eC;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cK;->b:Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {p0, p2}, Lad/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public aA_()V
    .locals 3

    invoke-static {}, Lad/b;->b()Lad/t;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cK;->c:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/content/Context;Lad/t;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cK;->a:Lcom/google/android/maps/driveabout/app/eC;

    invoke-virtual {v0}, Lad/t;->D()Lad/o;

    move-result-object v0

    invoke-virtual {v0}, Lad/o;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/eC;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cK;->b:Lcom/google/android/maps/driveabout/app/dz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dz;->v()V

    :cond_0
    return-void
.end method
