.class public Lf/E;
.super Ljava/lang/Object;

# interfaces
.implements Lf/j;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lf/E;->a:I

    iput v0, p0, Lf/E;->b:I

    return-void
.end method


# virtual methods
.method public a(Lf/K;)Lf/P;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(II)Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lf/E;->a:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lf/E;->a:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lf/E;->b:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lf/E;->b:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lf/E;->a:I

    iput p2, p0, Lf/E;->b:I

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
