.class Lb/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/A;


# direct methods
.method constructor <init>(Lb/A;)V
    .locals 0

    iput-object p1, p0, Lb/a;->a:Lb/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    return-void
.end method
