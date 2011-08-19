.class public Laf/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Laf/f;

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Laf/f;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf/d;->c:Laf/f;

    iput p2, p0, Laf/d;->a:F

    iput p3, p0, Laf/d;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Laf/d;->f:F

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Laf/d;->f:F

    return-void
.end method

.method a(FF)V
    .locals 0

    iput p1, p0, Laf/d;->d:F

    iput p2, p0, Laf/d;->e:F

    invoke-virtual {p0}, Laf/d;->b()V

    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Laf/d;->d:F

    iget v1, p0, Laf/d;->e:F

    iget-object v2, p0, Laf/d;->c:Laf/f;

    invoke-virtual {v2}, Laf/f;->c()LU/c;

    move-result-object v2

    iget v2, v2, LU/c;->a:F

    iget-object v3, p0, Laf/d;->c:Laf/f;

    invoke-virtual {v3}, Laf/f;->c()LU/c;

    move-result-object v3

    iget v3, v3, LU/c;->b:F

    invoke-static {v0, v1, v2, v3}, LU/d;->a(FFFF)F

    move-result v0

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p0, Laf/d;->g:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Laf/d;->g:F

    return v0
.end method
