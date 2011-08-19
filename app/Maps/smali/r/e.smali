.class public Lr/e;
.super Lr/i;

# interfaces
.implements Lcom/google/android/motiongesture/MotionRecognizerListener;


# static fields
.field public static final a:Lr/e;


# instance fields
.field private b:Lcom/google/android/motiongesture/MotionRecognizer;

.field private c:Lcom/google/googlenav/ui/aT;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    sput-object v0, Lr/e;->a:Lr/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3d1

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    invoke-virtual {p0}, Lr/e;->h()V

    invoke-super {p0, p1}, Lr/i;->a(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lr/i;->a(Lcom/google/googlenav/ui/aT;Z)V

    iput-object p1, p0, Lr/e;->c:Lcom/google/googlenav/ui/aT;

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iput-object v0, p0, Lr/e;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lr/e;->g()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3d0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/l;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Ole C."

    return-object v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lr/e;->b:Lcom/google/android/motiongesture/MotionRecognizer;

    if-nez v0, :cond_0

    new-instance v0, LaS/a;

    iget-object v1, p0, Lr/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, LaS/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lr/e;->b:Lcom/google/android/motiongesture/MotionRecognizer;

    iget-object v0, p0, Lr/e;->b:Lcom/google/android/motiongesture/MotionRecognizer;

    invoke-interface {v0, p0}, Lcom/google/android/motiongesture/MotionRecognizer;->start(Lcom/google/android/motiongesture/MotionRecognizerListener;)Z

    :cond_0
    return-void
.end method

.method public gestureNotification(Lcom/google/android/motiongesture/GestureEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/motiongesture/GestureEvent;->getProgress()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lr/e;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr/e;->c:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr/e;->c:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {v0, v1}, Li/aE;->a(Lax/e;)Z

    iget-object v0, p0, Lr/e;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    const/16 v0, 0x47

    const-string v1, "u"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lr/e;->a:Lr/e;

    invoke-virtual {v3}, Lr/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lr/e;->b:Lcom/google/android/motiongesture/MotionRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr/e;->b:Lcom/google/android/motiongesture/MotionRecognizer;

    invoke-interface {v0}, Lcom/google/android/motiongesture/MotionRecognizer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr/e;->b:Lcom/google/android/motiongesture/MotionRecognizer;

    :cond_0
    return-void
.end method
