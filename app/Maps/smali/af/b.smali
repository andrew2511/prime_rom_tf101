.class public Laf/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:LU/c;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42a0

    iput v0, p0, Laf/b;->b:F

    const/high16 v0, 0x4020

    iget v1, p0, Laf/b;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Laf/b;->c:F

    new-instance v0, LU/c;

    invoke-direct {v0, p1, p2}, LU/c;-><init>(FF)V

    iput-object v0, p0, Laf/b;->a:LU/c;

    return-void
.end method


# virtual methods
.method public a()LU/c;
    .locals 1

    iget-object v0, p0, Laf/b;->a:LU/c;

    return-object v0
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Laf/b;->a:LU/c;

    invoke-virtual {v0, p1, p2}, LU/c;->a(FF)V

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Laf/b;->a:LU/c;

    iget v0, v0, LU/c;->a:F

    return v0
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Laf/b;->a:LU/c;

    iget v0, v0, LU/c;->b:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Laf/b;->c:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Laf/b;->b:F

    return v0
.end method
