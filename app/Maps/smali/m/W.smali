.class public Lm/W;
.super Lm/p;


# instance fields
.field private final a:[Lm/p;


# direct methods
.method public constructor <init>([Lm/p;)V
    .locals 0

    invoke-direct {p0}, Lm/p;-><init>()V

    iput-object p1, p0, Lm/W;->a:[Lm/p;

    return-void
.end method

.method static synthetic a(Lm/W;)[Lm/p;
    .locals 1

    iget-object v0, p0, Lm/W;->a:[Lm/p;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm/W;->a:[Lm/p;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lm/W;->a:[Lm/p;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lm/p;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lm/I;)V
    .locals 1

    new-instance v0, Lm/G;

    invoke-direct {v0, p0, p1}, Lm/G;-><init>(Lm/W;Lm/I;)V

    invoke-virtual {v0}, Lm/G;->a()Z

    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lm/W;->a:[Lm/p;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lm/p;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method
