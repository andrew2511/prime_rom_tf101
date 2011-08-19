.class Lcom/google/android/maps/driveabout/app/cL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/power/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cL;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->c(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    return v0
.end method
