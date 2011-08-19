.class public final LB/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB/w;->a:I

    iput p2, p0, LB/w;->b:I

    iput p3, p0, LB/w;->c:F

    return-void
.end method

.method public static a(IIF)LB/w;
    .locals 1

    new-instance v0, LB/w;

    invoke-direct {v0, p0, p1, p2}, LB/w;-><init>(IIF)V

    return-object v0
.end method


# virtual methods
.method public a(LB/w;)I
    .locals 3

    iget v0, p0, LB/w;->c:F

    iget v1, p1, LB/w;->c:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LB/w;

    invoke-virtual {p0, p1}, LB/w;->a(LB/w;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LB/w;

    if-eqz v0, :cond_2

    iget v0, p0, LB/w;->a:I

    check-cast p1, LB/w;

    iget v1, p1, LB/w;->a:I

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LB/w;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lae/b;->a(Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "beginIndex"

    iget v2, p0, LB/w;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "stopIndex"

    iget v2, p0, LB/w;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "distance"

    iget v2, p0, LB/w;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    invoke-virtual {v0}, Lae/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
