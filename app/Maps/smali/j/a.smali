.class final Lj/a;
.super Lj/az;


# instance fields
.field final transient a:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1}, Lj/az;-><init>([Ljava/lang/Object;)V

    iput-object p3, p0, Lj/a;->a:[Ljava/lang/Object;

    iput p4, p0, Lj/a;->d:I

    iput p2, p0, Lj/a;->e:I

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj/t;->a(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lj/a;->a:[Ljava/lang/Object;

    iget v2, p0, Lj/a;->d:I

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lj/a;->e:I

    return v0
.end method
