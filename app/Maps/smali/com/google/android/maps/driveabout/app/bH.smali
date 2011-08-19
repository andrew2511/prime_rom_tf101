.class public Lcom/google/android/maps/driveabout/app/bH;
.super Ljava/lang/Object;

# interfaces
.implements LG/a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:LG/Q;

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:D

.field private j:LG/w;

.field private k:LG/w;

.field private l:I


# direct methods
.method public constructor <init>(LG/Q;LG/Q;II)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bH;->e:LG/Q;

    iput p3, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    if-ge p4, v8, :cond_2

    move v0, v8

    :goto_0
    invoke-virtual {p1}, LG/Q;->f()I

    move-result v1

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v2

    invoke-static {p3, v1, v2}, LG/w;->b(III)LG/w;

    move-result-object v1

    invoke-virtual {p2}, LG/Q;->f()I

    move-result v2

    invoke-virtual {p2}, LG/Q;->g()I

    move-result v3

    invoke-static {p3, v2, v3}, LG/w;->b(III)LG/w;

    move-result-object v2

    invoke-virtual {p2}, LG/Q;->f()I

    move-result v3

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, LG/Q;->g()I

    move-result v4

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_0

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    iput v8, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    invoke-virtual {v2}, LG/w;->c()I

    move-result v0

    invoke-virtual {v1}, LG/w;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->i:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->h:D

    :goto_2
    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    return-void

    :cond_0
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    iput v8, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    invoke-virtual {v2}, LG/w;->d()I

    move-result v0

    invoke-virtual {v1}, LG/w;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    goto :goto_1

    :cond_1
    int-to-double v0, v3

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->h:D

    int-to-double v0, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bH;->i:D

    goto :goto_2

    :cond_2
    move v0, p4

    goto :goto_0
.end method

.method public static a(LG/Q;II)Lcom/google/android/maps/driveabout/app/bH;
    .locals 4

    new-instance v0, LG/Q;

    invoke-virtual {p0}, LG/Q;->f()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, LG/Q;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    new-instance v1, LG/Q;

    invoke-virtual {p0}, LG/Q;->f()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, LG/Q;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, LG/Q;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/bH;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/maps/driveabout/app/bH;-><init>(LG/Q;LG/Q;II)V

    return-object v2
.end method


# virtual methods
.method public a()LG/w;
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    invoke-virtual {v0}, LG/w;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->k:LG/w;

    invoke-virtual {v1}, LG/w;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    invoke-virtual {v0}, LG/w;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->k:LG/w;

    invoke-virtual {v1}, LG/w;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, LG/w;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    invoke-virtual {v2}, LG/w;->c()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    invoke-virtual {v3}, LG/w;->d()I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LG/w;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bH;->b:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->e:LG/Q;

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/app/bH;->h:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bH;->e:LG/Q;

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/app/bH;->i:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, LG/w;->b(III)LG/w;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/bH;->j:LG/w;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bH;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->f:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->c:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->g:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/app/bH;->d:I

    add-int/2addr v1, v3

    invoke-static {v2, v0, v1}, LG/w;->b(III)LG/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bH;->k:LG/w;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bH;->l:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
