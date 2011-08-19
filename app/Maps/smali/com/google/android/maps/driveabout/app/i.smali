.class Lcom/google/android/maps/driveabout/app/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/B;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/eG;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eG;LF/B;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/i;->b:Lcom/google/android/maps/driveabout/app/eG;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/i;->a:LF/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/i;->b:Lcom/google/android/maps/driveabout/app/eG;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/eG;->a:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/i;->a:LF/B;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->c(LF/B;)V

    return-void
.end method
