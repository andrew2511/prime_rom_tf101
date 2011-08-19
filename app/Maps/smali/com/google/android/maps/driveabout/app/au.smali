.class Lcom/google/android/maps/driveabout/app/au;
.super Ljava/lang/Object;

# interfaces
.implements Lm/I;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dB;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm/p;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->c(Lcom/google/android/maps/driveabout/app/dB;)Lm/p;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected completion of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dB;->c(Lcom/google/android/maps/driveabout/app/dB;)Lm/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/dB;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->g(Lcom/google/android/maps/driveabout/app/U;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->d(Lcom/google/android/maps/driveabout/app/dB;)Lcom/google/android/maps/driveabout/app/cy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/dB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->d(Lcom/google/android/maps/driveabout/app/dB;)Lcom/google/android/maps/driveabout/app/cy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cy;->a()V

    :cond_1
    return-void
.end method
