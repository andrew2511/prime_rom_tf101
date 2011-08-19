.class Lcom/google/android/maps/driveabout/app/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laa/B;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/cD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cD;Laa/B;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Lcom/google/android/maps/driveabout/app/cD;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Laa/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Lcom/google/android/maps/driveabout/app/cD;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cD;->a:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Laa/B;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(Laa/B;)V

    return-void
.end method
