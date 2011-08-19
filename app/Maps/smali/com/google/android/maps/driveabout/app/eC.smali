.class public Lcom/google/android/maps/driveabout/app/eC;
.super Ljava/lang/Object;

# interfaces
.implements LG/a;


# static fields
.field private static final a:LG/a;

.field private static final b:LG/a;


# instance fields
.field private volatile c:I

.field private volatile d:Z

.field private e:LF/M;

.field private f:LG/m;

.field private g:I

.field private h:I

.field private i:I

.field private j:LG/a;

.field private final k:Lad/g;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/app/eC;->a:LG/a;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aZ;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/aZ;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/eC;->b:LG/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eC;->d:Z

    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->a:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    new-instance v0, Lad/g;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->k:Lad/g;

    return-void
.end method

.method static a(ILG/Q;)I
    .locals 4

    invoke-virtual {p1}, LG/Q;->e()D

    move-result-wide v0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private c()V
    .locals 5

    const/16 v4, 0xe

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->a:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    invoke-virtual {v1}, LF/M;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->a()LG/Q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eC;->a(LG/Q;)I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/google/android/maps/driveabout/app/bH;->a(LG/Q;II)Lcom/google/android/maps/driveabout/app/bH;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->l:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eC;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->f:LG/m;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->f:LG/m;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    invoke-virtual {v1, v2}, LG/m;->a(I)LG/Q;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/bH;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eC;->a(LG/Q;)I

    move-result v3

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/maps/driveabout/app/bH;-><init>(LG/Q;LG/Q;II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->m:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->a:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    goto :goto_0
.end method


# virtual methods
.method a(LG/Q;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->c:I

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eC;->a(ILG/Q;)I

    move-result v0

    return v0
.end method

.method public a()LG/w;
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    sget-object v1, Lcom/google/android/maps/driveabout/app/eC;->a:LG/a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    invoke-interface {v0}, LG/a;->a()LG/w;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/eC;->c()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->k:Lad/g;

    invoke-virtual {v1, v0}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->k:Lad/g;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(LF/M;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    invoke-virtual {v0}, LF/M;->m()LG/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->f:LG/m;

    iput v1, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/eC;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->b:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    return-void
.end method

.method public a(LF/y;I)V
    .locals 2

    invoke-virtual {p1}, LF/y;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    if-gt v1, v0, :cond_1

    sget-object v1, Lcom/google/android/maps/driveabout/app/eC;->b:LG/a;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    :cond_0
    :goto_0
    iput p2, p0, Lcom/google/android/maps/driveabout/app/eC;->i:I

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    if-gt v0, p2, :cond_2

    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->b:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    sget-object v1, Lcom/google/android/maps/driveabout/app/eC;->a:LG/a;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->i:I

    if-ge v0, p2, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->b:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    goto :goto_0
.end method

.method a(I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->f:LG/m;

    invoke-virtual {v1}, LG/m;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/eC;->i:I

    if-ne p1, v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->f:LG/m;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, LG/m;->a(I)LG/Q;

    move-result-object v0

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v1

    invoke-virtual {v1}, Lad/t;->u()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/eC;->a(ILG/Q;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, LF/M;->b(I)D

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/eC;->i:I

    invoke-virtual {v3, v4}, LF/M;->b(I)D

    move-result-wide v3

    sub-double/2addr v1, v3

    int-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->f:LG/m;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/eC;->e:LF/M;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/app/eC;->b:LG/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->j:LG/a;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eC;->k:Lad/g;

    invoke-virtual {v0}, Lad/g;->a()V

    return-void
.end method

.method b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/eC;->c:I

    return-void
.end method
