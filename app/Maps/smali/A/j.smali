.class public LA/j;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lac/s;Lac/s;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lac/s;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v9

    :cond_1
    invoke-virtual {p0, v0}, Lac/s;->a(I)J

    move-result-wide v1

    invoke-virtual {p1, v0}, Lac/s;->a(I)J

    move-result-wide v3

    sub-int v5, v0, v9

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {p1, v5}, Lac/s;->a(I)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_2

    invoke-virtual {p0, v5}, Lac/s;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lac/s;->a(JI)V

    invoke-virtual {p1, v5}, Lac/s;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v6, v7, v8}, Lac/s;->a(JI)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    if-eq v0, v5, :cond_3

    invoke-virtual {p0, v1, v2, v5}, Lac/s;->a(JI)V

    invoke-virtual {p1, v3, v4, v5}, Lac/s;->a(JI)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lac/s;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0
.end method

.method public static b(Lac/s;Lac/s;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lac/s;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v9

    :cond_1
    invoke-virtual {p0, v0}, Lac/s;->a(I)J

    move-result-wide v1

    invoke-virtual {p1, v0}, Lac/s;->a(I)J

    move-result-wide v3

    sub-int v5, v0, v9

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {p1, v5}, Lac/s;->a(I)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_2

    invoke-virtual {p0, v5}, Lac/s;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lac/s;->a(JI)V

    invoke-virtual {p1, v5}, Lac/s;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v6, v7, v8}, Lac/s;->a(JI)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    if-eq v0, v5, :cond_3

    invoke-virtual {p0, v1, v2, v5}, Lac/s;->a(JI)V

    invoke-virtual {p1, v3, v4, v5}, Lac/s;->a(JI)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lac/s;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0
.end method
