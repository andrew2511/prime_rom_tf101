.class public Lcom/google/android/maps/driveabout/app/cT;
.super Lak/m;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/maps/driveabout/app/I;

.field private e:Lcom/google/android/maps/driveabout/app/aK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/I;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cT;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cT;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cT;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cT;->d:Lcom/google/android/maps/driveabout/app/I;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/t;->l:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cT;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cT;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    new-instance v2, Law/e;

    sget-object v3, Ls/n;->a:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    invoke-virtual {v0}, Law/e;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Ls/t;->m:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/app/aK;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cT;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cT;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cT;->c:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/app/aK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Law/e;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/cT;->e:Lcom/google/android/maps/driveabout/app/aK;

    move v0, v6

    goto :goto_0
.end method

.method public i_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->d:Lcom/google/android/maps/driveabout/app/I;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->e:Lcom/google/android/maps/driveabout/app/aK;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->d:Lcom/google/android/maps/driveabout/app/I;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/I;->a(Lcom/google/android/maps/driveabout/app/cT;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->d:Lcom/google/android/maps/driveabout/app/I;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/I;->b(Lcom/google/android/maps/driveabout/app/cT;)V

    goto :goto_0
.end method

.method public l()Lcom/google/android/maps/driveabout/app/aK;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->e:Lcom/google/android/maps/driveabout/app/aK;

    return-object v0
.end method
