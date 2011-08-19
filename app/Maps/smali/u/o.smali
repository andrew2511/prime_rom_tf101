.class public Lu/o;
.super Lu/f;


# instance fields
.field private b:Ljava/util/Vector;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lu/e;IILf/h;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lu/f;-><init>(Lu/e;IIILf/h;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    iput v7, p0, Lu/o;->c:I

    iput v7, p0, Lu/o;->d:I

    return-void
.end method


# virtual methods
.method public a(Lu/f;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/f;->a(I)V

    :cond_0
    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/o;->b(I)Lu/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lu/f;->a(I)V

    :cond_1
    iput-object p0, p1, Lu/f;->a:Lu/o;

    iget v0, p0, Lu/o;->c:I

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->q()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lu/o;->c:I

    iget v0, p0, Lu/o;->d:I

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->s()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lu/o;->d:I

    return-void
.end method

.method public ap()LA/c;
    .locals 3

    new-instance v0, LA/c;

    const-string v1, "AggregateDirectionsFeature"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LA/c;->a(LA/c;)LA/c;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lu/f;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LA/c;->a(LA/c;)LA/c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lu/f;
    .locals 1

    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/f;

    return-object p0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lu/o;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lu/o;->c:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lu/o;->d:I

    return v0
.end method
