.class public abstract Lcom/google/android/maps/driveabout/app/ew;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/AudioManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/ew;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/b;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/b;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/bJ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bJ;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ew;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/ew;->b:Z

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ew;->b()V

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/ew;->b:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ew;->b:Z

    return v0
.end method
