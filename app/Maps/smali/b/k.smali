.class public abstract Lb/k;
.super Ljava/lang/Object;


# static fields
.field private static final k:[Lb/k;


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:I

.field protected c:Landroid/content/Context;

.field protected d:Lcom/google/android/maps/driveabout/app/e;

.field protected e:Lcom/google/android/maps/driveabout/app/Q;

.field protected f:Lcom/google/android/maps/driveabout/app/eE;

.field protected g:Lcom/google/android/maps/driveabout/app/bX;

.field protected h:Lb/p;

.field protected i:LF/L;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [Lb/k;

    sput-object v0, Lb/k;->k:[Lb/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LF/u;I[LF/K;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a(LF/u;I[LF/K;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "UserRequestedReroute"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/e;Lcom/google/android/maps/driveabout/app/Q;Lcom/google/android/maps/driveabout/app/eE;Lcom/google/android/maps/driveabout/app/bX;LF/L;)V
    .locals 8

    const/4 v3, 0x0

    sget-object v0, Lb/k;->k:[Lb/k;

    sget-object v1, Lb/h;->a:Lb/h;

    aput-object v1, v0, v3

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x1

    sget-object v2, Lb/C;->a:Lb/C;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x2

    sget-object v2, Lb/c;->a:Lb/c;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x3

    sget-object v2, Lb/y;->a:Lb/y;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x4

    sget-object v2, Lb/x;->a:Lb/x;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x5

    sget-object v2, Lb/d;->a:Lb/d;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x6

    sget-object v2, Lb/e;->a:Lb/e;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/4 v1, 0x7

    sget-object v2, Lb/A;->a:Lb/A;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/16 v1, 0x8

    sget-object v2, Lb/g;->a:Lb/g;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/16 v1, 0x9

    sget-object v2, Lb/s;->a:Lb/s;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/16 v1, 0xa

    sget-object v2, Lb/q;->a:Lb/q;

    aput-object v2, v0, v1

    sget-object v0, Lb/k;->k:[Lb/k;

    const/16 v1, 0xb

    sget-object v2, Lb/j;->a:Lb/j;

    aput-object v2, v0, v1

    move v7, v3

    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    sget-object v0, Lb/k;->k:[Lb/k;

    aget-object v0, v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lb/k;->b(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/e;Lcom/google/android/maps/driveabout/app/Q;Lcom/google/android/maps/driveabout/app/eE;Lcom/google/android/maps/driveabout/app/bX;LF/L;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lb/k;Lcom/google/android/maps/driveabout/app/Q;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/k;->c(Lcom/google/android/maps/driveabout/app/Q;)V

    return-void
.end method

.method static synthetic a(Lb/k;Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/k;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V

    return-void
.end method

.method public static final a(Lcom/google/android/maps/driveabout/app/Q;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    sget-object v1, Lb/k;->k:[Lb/k;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lb/k;->b(Lcom/google/android/maps/driveabout/app/Q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bL;

    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/bL;-><init>(Lcom/google/android/maps/driveabout/app/Q;)V

    new-instance v1, Lb/z;

    invoke-direct {v1, p0, p2}, Lb/z;-><init>(Lb/k;Lcom/google/android/maps/driveabout/app/W;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/bL;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/dK;)V

    return-void
.end method

.method private final a(ZZ)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->i()V

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/k;->f:Lcom/google/android/maps/driveabout/app/eE;

    iget-object v1, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->m()I

    move-result v1

    iget-object v2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/e;->o()I

    move-result v2

    iget-object v3, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/e;->n()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/eE;->a(III)V

    :cond_0
    invoke-virtual {p0, p1}, Lb/k;->g(Z)V

    invoke-direct {p0}, Lb/k;->aj()V

    return-void

    :cond_1
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->j()V

    goto :goto_0
.end method

.method private af()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lb/k;->b:I

    if-lez v0, :cond_0

    const-string v0, "v"

    iget v1, p0, Lb/k;->b:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    iput v2, p0, Lb/k;->b:I

    :cond_0
    iget v0, p0, Lb/k;->j:I

    if-lez v0, :cond_1

    const-string v0, "z"

    iget v1, p0, Lb/k;->j:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    iput v2, p0, Lb/k;->j:I

    :cond_1
    return-void
.end method

.method private ag()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->h()I

    move-result v0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/e;->b(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->h()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->e(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->B()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/e;->b(I)V

    goto :goto_0
.end method

.method private ah()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lb/k;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->b()F

    move-result v0

    new-instance v1, Laa/E;

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v2

    invoke-direct {v1, v2}, Laa/E;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v0}, Laa/E;->setBearing(F)V

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v1, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(Landroid/location/Location;Z)V

    :goto_0
    invoke-virtual {p0}, Lb/k;->W()V

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Landroid/location/Location;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Laa/E;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(Landroid/location/Location;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private ai()I
    .locals 1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lb/k;->X()I

    move-result v0

    goto :goto_0
.end method

.method private aj()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->g()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->c(Z)V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->h(Z)V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/app/Q;->h(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->t()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->t()V

    goto :goto_1
.end method

.method private ak()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->u()V

    :goto_0
    invoke-virtual {p0}, Lb/k;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->l()LF/u;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LF/u;->e()LG/y;

    move-result-object v0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-virtual {v1, v0}, Laa/E;->a(LG/y;)F

    move-result v0

    const/high16 v1, 0x4270

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/Q;->j(Z)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lb/k;->a()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private al()V
    .locals 0

    invoke-virtual {p0}, Lb/k;->i()V

    return-void
.end method

.method private am()V
    .locals 2

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->d()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/Q;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->a()V

    goto :goto_0
.end method

.method private an()V
    .locals 4

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->m()I

    move-result v1

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v2

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(IIZ)V

    return-void
.end method

.method private ao()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/k;->p()V

    goto :goto_0
.end method

.method private ap()V
    .locals 3

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const-string v1, "__route_status"

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lb/k;->Z()V

    goto :goto_0
.end method

.method private aq()Z
    .locals 2

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->e()I

    move-result v0

    const/16 v1, 0x1324

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ar()V
    .locals 1

    iget-object v0, p0, Lb/k;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->x()V

    return-void
.end method

.method private final as()V
    .locals 0

    return-void
.end method

.method private b(Z)V
    .locals 4

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-direct {p0}, Lb/k;->ai()I

    move-result v1

    iget-object v2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/e;->h()I

    move-result v2

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/aH;->a(III)V

    invoke-virtual {p0, p1}, Lb/k;->a(Z)V

    return-void
.end method

.method private final c(Lcom/google/android/maps/driveabout/app/Q;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const-string v1, "ShowDNHWarning"

    invoke-static {v0, v1, v2}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v0

    invoke-virtual {v0}, LF/u;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    invoke-virtual {v1}, Laa/E;->l()LG/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/cp;->a(Ljava/lang/String;LG/y;)V

    :cond_0
    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const v1, 0x7f0b0046

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(Z)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lb/k;->a(ZZ)V

    return-void
.end method

.method public final B()V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lah/c;

    const-string v2, "compassButton"

    invoke-direct {v1, v2, v0}, Lah/c;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, LaT/d;->b(LaT/f;)V

    if-eqz v0, :cond_1

    const-string v0, "3"

    :goto_1
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k;->u()V

    invoke-direct {p0}, Lb/k;->ar()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "2"

    goto :goto_1
.end method

.method public final C()V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "zoomOut"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget v0, p0, Lb/k;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/k;->j:I

    invoke-virtual {p0}, Lb/k;->Q()V

    return-void
.end method

.method public final D()V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "zoomIn"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget v0, p0, Lb/k;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/k;->j:I

    invoke-virtual {p0}, Lb/k;->P()V

    return-void
.end method

.method public final E()Z
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "back"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    invoke-virtual {p0}, Lb/k;->R()Z

    move-result v0

    return v0
.end method

.method public final F()V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lah/l;

    const-string v1, "routeOverview"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "r"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/d;->a:Lb/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    goto :goto_0
.end method

.method public final G()V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lah/l;

    const-string v1, "viewList"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "l"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/e;->a:Lb/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    goto :goto_0
.end method

.method public final H()V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "backToLocation"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "n"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k;->S()V

    return-void
.end method

.method public final I()V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "TravelMode"

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final J()V
    .locals 1

    invoke-direct {p0}, Lb/k;->as()V

    const-string v0, "+"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k;->q()V

    invoke-direct {p0}, Lb/k;->ar()V

    return-void
.end method

.method public final K()V
    .locals 1

    invoke-direct {p0}, Lb/k;->as()V

    const-string v0, "-"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k;->c()V

    invoke-direct {p0}, Lb/k;->ar()V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->q()V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 1

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->s()V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0}, Lb/k;->T()V

    invoke-direct {p0}, Lb/k;->ar()V

    return-void
.end method

.method public final N()V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0}, Lb/k;->w()V

    invoke-direct {p0}, Lb/k;->ar()V

    return-void
.end method

.method public final O()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lb/k;->as()V

    const-string v0, "."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    const v0, 0x7f0b0012

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->c()I

    move-result v1

    if-ne v1, v3, :cond_1

    const v0, 0x7f0b0010

    :cond_0
    :goto_0
    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v2, p0, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->k(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/k;->a(LF/y;)V

    invoke-direct {p0}, Lb/k;->ak()V

    invoke-direct {p0}, Lb/k;->ap()V

    invoke-virtual {p0}, Lb/k;->U()V

    invoke-static {v3}, Lcom/google/android/maps/driveabout/app/aN;->b(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v0, 0x7f0b0011

    goto :goto_0
.end method

.method protected P()V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/g;->a:Lb/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(F)F

    invoke-virtual {p0}, Lb/k;->Y()V

    :cond_0
    return-void
.end method

.method protected Q()V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/g;->a:Lb/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(F)F

    invoke-virtual {p0}, Lb/k;->Y()V

    :cond_0
    return-void
.end method

.method protected R()Z
    .locals 1

    iget-object v0, p0, Lb/k;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->c()Z

    move-result v0

    return v0
.end method

.method protected S()V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected T()V
    .locals 0

    return-void
.end method

.method protected U()V
    .locals 0

    return-void
.end method

.method protected V()Z
    .locals 2

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected W()V
    .locals 0

    return-void
.end method

.method protected X()I
    .locals 1

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v0

    invoke-virtual {v0}, Laa/E;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final Y()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LF/y;->k()LF/y;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v6

    :goto_0
    invoke-virtual {v0}, LF/y;->j()LF/y;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_1
    iget-object v2, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v3, p0, Lb/k;->h:Lb/p;

    invoke-virtual {v3}, Lb/p;->a()Lb/k;

    move-result-object v3

    sget-object v4, Lb/j;->a:Lb/j;

    if-eq v3, v4, :cond_2

    move v3, v6

    :goto_2
    invoke-interface {v2, v1, v0, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(ZZZ)V

    return-void

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v0, v5

    move v1, v5

    goto :goto_1
.end method

.method protected Z()V
    .locals 5

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v2

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/Q;->a(IZIZ)V

    return-void

    :cond_0
    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->d()I

    move-result v1

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v2

    invoke-direct {p0}, Lb/k;->aq()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/app/bX;LF/y;ZZ)V

    goto :goto_0
.end method

.method protected a(FF)V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/g;->a:Lb/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected a(FFF)V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/g;->a:Lb/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method public final a(I)V
    .locals 4

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/c;

    const-string v1, "volume"

    invoke-direct {v0, v1, p1}, Lah/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget v0, p0, Lb/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/k;->b:I

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/e;->c(I)V

    iget-object v0, p0, Lb/k;->f:Lcom/google/android/maps/driveabout/app/eE;

    iget-object v1, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->m()I

    move-result v1

    iget-object v2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/e;->o()I

    move-result v2

    iget-object v3, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/e;->n()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/eE;->a(III)V

    invoke-direct {p0}, Lb/k;->aj()V

    return-void
.end method

.method public final a(IIFIIII)V
    .locals 1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/aH;->a(IIF)V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/google/android/maps/driveabout/app/aH;->a(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/k;->b(Z)V

    return-void
.end method

.method public a(LF/M;)V
    .locals 0

    return-void
.end method

.method protected a(LF/M;[LF/M;)V
    .locals 3

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x1

    new-array v1, v1, [LF/M;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;[LF/M;)V

    return-void
.end method

.method protected a(LF/l;)V
    .locals 3

    invoke-virtual {p0, p1}, Lb/k;->c(LF/l;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v2, p0, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final a(LF/u;Z)V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/c;

    const-string v1, "newDestination"

    invoke-virtual {p1}, LF/u;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lah/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    if-eqz p2, :cond_0

    const-string v0, "d"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->A()[LF/K;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lb/k;->a(LF/u;I[LF/K;)V

    return-void
.end method

.method public final a(LF/w;I)V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-direct {p0}, Lb/k;->af()V

    invoke-virtual {p0, p1, p2}, Lb/k;->c(LF/w;I)V

    invoke-direct {p0}, Lb/k;->ar()V

    return-void
.end method

.method protected final a(LF/y;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/e;->a(LF/y;)V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LF/y;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v3, v3, v3}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/M;LF/y;Lcom/google/android/maps/driveabout/vector/bA;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    new-instance v2, Lb/l;

    invoke-direct {v2, p0, p1}, Lb/l;-><init>(Lb/k;LF/y;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/M;LF/y;Lcom/google/android/maps/driveabout/vector/bA;)V

    goto :goto_0
.end method

.method protected a(LF/y;LF/y;)V
    .locals 0

    invoke-virtual {p0, p2}, Lb/k;->a(LF/y;)V

    return-void
.end method

.method protected a(LF/y;Z)V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/s;->a:Lb/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/k;->a(LF/y;Z)V

    :cond_0
    return-void
.end method

.method protected a(LG/Q;)V
    .locals 1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->v()V

    invoke-virtual {p0}, Lb/k;->Y()V

    return-void
.end method

.method public final a(LG/R;Lcom/google/android/maps/driveabout/app/aR;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "layers"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "s"

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v8

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->t()Lcom/google/android/maps/driveabout/app/aI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/app/aI;->a(LG/R;)V

    iget-object v0, p0, Lb/k;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    sget-object v1, Lb/q;->a:Lb/q;

    if-ne v0, v1, :cond_1

    move v5, v8

    :goto_1
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aI;->b()Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aI;->c()Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v2

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v3

    iget-object v4, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/e;->h()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    move v4, v8

    :goto_2
    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZLcom/google/android/maps/driveabout/app/aR;)V

    return-void

    :cond_0
    move v1, v7

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_2
.end method

.method public final a(LaT/d;)V
    .locals 4

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->e(Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "da_voice-rmi.3gp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/W;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/app/W;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v3, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/W;->a(Lcom/google/android/maps/driveabout/app/bX;Lcom/google/android/maps/driveabout/app/e;)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/W;->a(LaT/d;Lcom/google/android/maps/driveabout/app/Q;)V

    :cond_1
    iget-object v2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/e;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v1}, Lb/k;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    new-instance v3, Lb/m;

    invoke-direct {v3, p0, v0, v1}, Lb/m;-><init>(Lb/k;Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/e;->a(Lcom/google/android/maps/driveabout/app/cy;)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;LG/z;)V
    .locals 2

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/bX;LG/z;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;LG/z;Lcom/google/android/maps/driveabout/app/F;)V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "?"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lb/k;->a(Landroid/os/Bundle;LG/z;)V

    invoke-interface {p3, p1}, Lcom/google/android/maps/driveabout/app/F;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bY;)V
    .locals 2

    const v1, 0x7f0f038f

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/app/bY;Landroid/content/Context;)V
    .locals 6

    const v5, 0x7f0f0390

    const v4, 0x7f0f038d

    const v1, 0x7f0f038c

    const v3, 0x7f0f038a

    const v2, 0x7f0f0389

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    :goto_0
    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    iget-object v1, p0, Lb/k;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0391

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    const v0, 0x7f0f0392

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    :goto_1
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    :goto_2
    const v0, 0x7f0f039b

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    invoke-virtual {p0, p1}, Lb/k;->a(Lcom/google/android/maps/driveabout/app/bY;)V

    const v0, 0x7f0f0398

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    const v0, 0x7f0f039b

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    const v0, 0x7f0f039a

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    const v0, 0x7f0f0399

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0391

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    const v0, 0x7f0f0392

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bY;->b(I)V

    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bY;->a(I)V

    goto :goto_2
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/g;->a:Lb/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/vector/cA;)V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/cA;)V

    invoke-direct {p0}, Lb/k;->ar()V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/bX;)V

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lb/k;->as()V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/w;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final aa()V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/l;

    const-string v1, "showStreetView"

    invoke-direct {v0, v1}, Lah/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    invoke-virtual {p0}, Lb/k;->ab()V

    return-void
.end method

.method protected ab()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lb/j;->a:Lb/j;

    invoke-virtual {v0, v2}, Lb/j;->b(Z)V

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/j;->a:Lb/j;

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method protected ac()V
    .locals 1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->c()V

    invoke-direct {p0}, Lb/k;->am()V

    return-void
.end method

.method public final ad()V
    .locals 2

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->d(Z)V

    invoke-virtual {p0}, Lb/k;->e()V

    return-void
.end method

.method public ae()V
    .locals 3

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const-string v1, "ShowDNHWarning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    new-instance v1, Lb/n;

    invoke-direct {v1, p0}, Lb/n;-><init>(Lb/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-direct {p0, v0}, Lb/k;->c(Lcom/google/android/maps/driveabout/app/Q;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v1

    invoke-virtual {v1}, LF/s;->a()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-virtual {v0}, LF/u;->f()LF/s;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LF/s;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/Q;->c(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0, p1, p2}, Lb/k;->a(FF)V

    return-void
.end method

.method public final b(FFF)V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0, p1, p2, p3}, Lb/k;->a(FFF)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v1

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(IIZ)V

    invoke-virtual {p0, p1}, Lb/k;->c(I)V

    return-void
.end method

.method public final b(LF/M;[LF/M;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p1}, LF/M;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->i()I

    move-result v0

    invoke-virtual {p1}, LF/M;->j()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p1, v0}, LF/M;->a(I)LF/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/k;->a(LF/y;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lb/k;->a(LF/M;[LF/M;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->a(LF/y;)V

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->p()V

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->b(Z)V

    goto :goto_0
.end method

.method public final b(LF/l;)V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0, p1}, Lb/k;->a(LF/l;)V

    return-void
.end method

.method public final b(LF/w;I)V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {v1}, LF/M;->p()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/e;->b(LF/w;II)V

    :cond_0
    return-void
.end method

.method public final b(LF/y;LF/y;)V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0, p1, p2}, Lb/k;->a(LF/y;LF/y;)V

    invoke-direct {p0}, Lb/k;->ar()V

    return-void
.end method

.method public final b(LF/y;Z)V
    .locals 3

    invoke-direct {p0}, Lb/k;->as()V

    if-eqz p1, :cond_0

    new-instance v0, Lah/c;

    const-string v1, "step"

    invoke-virtual {p1}, LF/y;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lah/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "p"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2}, Lb/k;->a(LF/y;Z)V

    invoke-direct {p0}, Lb/k;->ar()V

    :cond_0
    return-void
.end method

.method public final b(LG/Q;)V
    .locals 0

    invoke-direct {p0}, Lb/k;->as()V

    invoke-virtual {p0, p1}, Lb/k;->a(LG/Q;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/e;Lcom/google/android/maps/driveabout/app/Q;Lcom/google/android/maps/driveabout/app/eE;Lcom/google/android/maps/driveabout/app/bX;LF/L;)V
    .locals 1

    iput-object p1, p0, Lb/k;->c:Landroid/content/Context;

    iput-object p2, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    iput-object p3, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    iput-object p4, p0, Lb/k;->f:Lcom/google/android/maps/driveabout/app/eE;

    iput-object p5, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    sget-object v0, Lb/p;->a:Lb/p;

    iput-object v0, p0, Lb/k;->h:Lb/p;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lb/k;->a:Ljava/lang/Thread;

    iput-object p6, p0, Lb/k;->i:LF/L;

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/app/Q;)V
    .locals 0

    iput-object p1, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    return-void
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/aX;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->w()V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/k;->a(LF/y;)V

    invoke-virtual {p0}, Lb/k;->aa()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/bN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bN;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/aA;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/bN;)V

    goto :goto_0
.end method

.method protected final c(LF/l;)I
    .locals 2

    invoke-virtual {p1}, LF/l;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LF/l;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0b00a8

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, LF/l;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00a7

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/l;->u()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, LF/l;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LF/l;->l()[LF/M;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b00ad

    goto :goto_0

    :cond_3
    const v0, 0x7f0b00a6

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->m(Z)V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->k()V

    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method protected c(LF/w;I)V
    .locals 2

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {v1}, LF/M;->p()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/e;->a(LF/w;II)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/n;

    const-string v1, "marker"

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "t"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lb/k;->a(Lcom/google/android/maps/driveabout/vector/cA;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/c;

    const-string v1, "mute"

    invoke-direct {v0, v1, p1}, Lah/c;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "u"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lb/k;->a(ZZ)V

    return-void
.end method

.method protected d(I)V
    .locals 1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/e;->a(I)V

    invoke-direct {p0}, Lb/k;->am()V

    return-void
.end method

.method public final d(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/n;

    const-string v1, "marker"

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "t"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lb/k;->b(Lcom/google/android/maps/driveabout/vector/cA;)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/c;

    const-string v1, "viewTraffic"

    invoke-direct {v0, v1, p1}, Lah/c;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "f"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lb/k;->h(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->c()V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    invoke-direct {p0}, Lb/k;->as()V

    new-instance v0, Lah/c;

    const-string v1, "viewSatellite"

    invoke-direct {v0, v1, p1}, Lah/c;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    const-string v0, "S"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lb/k;->i(Z)V

    return-void
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public final f(Z)V
    .locals 1

    invoke-direct {p0}, Lb/k;->as()V

    const-string v0, ","

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k;->v()V

    invoke-direct {p0}, Lb/k;->ar()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->r()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method protected g(Z)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method protected h(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/q;->a:Lb/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v0

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->x()[LF/u;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->H()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0043

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v6, v4

    move v5, v4

    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->u()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v2

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->A()[LF/K;

    move-result-object v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/a;->a([LF/u;I[LF/K;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0052

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v6, v5

    move v5, v4

    move-object v4, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v6, v5

    move v5, v4

    move-object v4, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->e()I

    move-result v2

    iget-object v3, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v3

    iget-object v4, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v4

    invoke-virtual {v4}, LF/M;->p()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(ILF/y;I)Landroid/text/Spannable;

    move-result-object v0

    move v6, v5

    move-object v4, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    const v2, 0x7f0b0075

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v6, v5

    move-object v4, v0

    goto :goto_1

    :cond_6
    move v6, v5

    move-object v4, v2

    goto :goto_1
.end method

.method protected i(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->b(I)V

    :goto_0
    iget-object v0, p0, Lb/k;->c:Landroid/content/Context;

    iget-object v1, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v1

    invoke-static {v1}, LF/z;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    const-string v1, "SatelliteImagery"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lad/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lad/s;

    invoke-direct {p0}, Lb/k;->ar()V

    return-void

    :cond_0
    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/e;->b(I)V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k;->g()V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lb/k;->l()V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method protected p()V
    .locals 2

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(I)V

    return-void
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    return-void
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lb/k;->h:Lb/p;

    sget-object v1, Lb/d;->a:Lb/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->h:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->r()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected u()V
    .locals 1

    iget-object v0, p0, Lb/k;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->f()V

    return-void
.end method

.method protected v()V
    .locals 0

    return-void
.end method

.method protected w()V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 1

    invoke-direct {p0}, Lb/k;->as()V

    invoke-direct {p0}, Lb/k;->aj()V

    invoke-direct {p0}, Lb/k;->ag()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/k;->b(Z)V

    invoke-direct {p0}, Lb/k;->ak()V

    invoke-direct {p0}, Lb/k;->ap()V

    invoke-direct {p0}, Lb/k;->al()V

    invoke-direct {p0}, Lb/k;->am()V

    invoke-direct {p0}, Lb/k;->an()V

    invoke-direct {p0}, Lb/k;->ao()V

    invoke-virtual {p0}, Lb/k;->o()V

    return-void
.end method

.method public final y()V
    .locals 1

    invoke-direct {p0}, Lb/k;->ah()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/k;->b(Z)V

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/k;->ak()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Lb/k;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->b()F

    move-result v0

    new-instance v1, Laa/E;

    iget-object v2, p0, Lb/k;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v2

    invoke-direct {v1, v2}, Laa/E;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v0}, Laa/E;->setBearing(F)V

    iget-object v0, p0, Lb/k;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(Landroid/location/Location;Z)V

    :cond_0
    return-void
.end method
