.class Lcom/google/android/maps/driveabout/app/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bX;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bw;->a:Lcom/google/android/maps/driveabout/app/bX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->a:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/bX;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()V

    return-void
.end method
