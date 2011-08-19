.class Lcom/google/android/maps/driveabout/app/eJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lak/d;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/E;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/E;Lak/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eJ;->b:Lcom/google/android/maps/driveabout/app/E;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lak/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lak/d;

    invoke-interface {v0}, Lak/d;->n_()V

    return-void
.end method
