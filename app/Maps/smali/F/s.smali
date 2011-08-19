.class public final LF/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0}, LF/s;-><init>([Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, LR/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LF/s;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LF/s;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    move v0, v3

    move v1, v3

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    move-object v0, p0

    :cond_2
    return-object v0

    :cond_3
    array-length v0, p0

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    move v1, v3

    move v2, v3

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    aget-object v4, p0, v2

    aput-object v4, v0, v1

    move v1, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LF/s;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/s;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, LF/s;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LF/s;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_1
    iget-object v2, p0, LF/s;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, LF/s;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LF/s;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LF/s;->a:[Ljava/lang/String;

    check-cast p1, LF/s;

    iget-object v1, p1, LF/s;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LF/s;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LF/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
