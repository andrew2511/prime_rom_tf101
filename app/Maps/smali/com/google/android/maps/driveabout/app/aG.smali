.class Lcom/google/android/maps/driveabout/app/aG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eK;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/maps/driveabout/app/bL;

.field private final d:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bL;JJ)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aG;->c:Lcom/google/android/maps/driveabout/app/bL;

    iput-wide p2, p0, Lcom/google/android/maps/driveabout/app/aG;->a:J

    iput-wide p4, p0, Lcom/google/android/maps/driveabout/app/aG;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bM;

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/aG;->a:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/app/aG;->b:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bM;-><init>(Lcom/google/android/maps/driveabout/app/aG;JJ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aG;->d:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aG;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aG;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
