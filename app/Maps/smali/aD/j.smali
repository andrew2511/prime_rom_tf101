.class public LaD/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/j;->a:Ljava/lang/String;

    iput-object p2, p0, LaD/j;->b:Ljava/lang/Long;

    return-void
.end method

.method public static a(Law/e;)LaD/j;
    .locals 4

    const/4 v2, 0x2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Law/e;->e(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    :goto_0
    new-instance v2, LaD/j;

    invoke-direct {v2, v0, v1}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, LaD/j;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Law/e;
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->v:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget-object v2, p0, LaD/j;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    iget-object v1, p0, LaD/j;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, LaD/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_0
    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
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
    instance-of v0, p1, LaD/j;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, LaD/j;

    iget-object v0, p0, LaD/j;->b:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, LaD/j;->b:Ljava/lang/Long;

    iget-object v1, p1, LaD/j;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p1, LaD/j;->b:Ljava/lang/Long;

    if-nez v0, :cond_2

    :cond_4
    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    iget-object v1, p1, LaD/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p1, LaD/j;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaD/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LaD/j;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, LaD/j;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
