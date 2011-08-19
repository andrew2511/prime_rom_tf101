.class Lb/r;
.super Ljava/lang/Object;

# interfaces
.implements LaH/b;


# instance fields
.field final synthetic a:Lb/k;


# direct methods
.method private constructor <init>(Lb/k;)V
    .locals 0

    iput-object p1, p0, Lb/r;->a:Lb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/k;Lb/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/r;-><init>(Lb/k;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lb/r;->a:Lb/k;

    iget-object v0, v0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/r;->a:Lb/k;

    iget-object v1, v1, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/r;->a:Lb/k;

    iget-object v1, v1, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "da_voice-rmi.3gp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
