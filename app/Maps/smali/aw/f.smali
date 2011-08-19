.class public Law/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:[Law/c;


# instance fields
.field private final a:LA/w;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v1, 0x0

    const/16 v0, 0xa8

    new-array v0, v0, [Law/c;

    sput-object v0, Law/f;->b:[Law/c;

    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-gt v0, v2, :cond_1

    const/16 v2, 0x10

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_1
    const/16 v3, 0x25

    if-ge v1, v3, :cond_0

    sget-object v3, Law/f;->b:[Law/c;

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Law/c;

    shl-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Law/c;-><init>(ILjava/lang/Object;)V

    aput-object v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA/w;

    invoke-direct {v0}, LA/w;-><init>()V

    iput-object v0, p0, Law/f;->a:LA/w;

    const/4 v0, 0x0

    iput-object v0, p0, Law/f;->c:Ljava/lang/String;

    return-void
.end method

.method private static c(I)Law/c;
    .locals 3

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x15

    and-int/lit16 v1, p0, 0xff

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    sget-object v1, Law/f;->b:[Law/c;

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Law/f;->a:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/c;

    if-nez p0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Law/c;->a(Law/c;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Law/f;
    .locals 2

    iget-object v0, p0, Law/f;->a:LA/w;

    if-nez p3, :cond_0

    invoke-static {p1}, Law/f;->c(I)Law/c;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p2, v1}, LA/w;->a(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v1, Law/c;

    invoke-direct {v1, p1, p3}, Law/c;-><init>(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Law/f;->a:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/c;

    if-nez p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Law/c;->b(Law/c;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Law/f;

    iget-object v0, p0, Law/f;->a:LA/w;

    iget-object v1, p1, Law/f;->a:LA/w;

    invoke-virtual {v0, v1}, LA/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Law/f;->a:LA/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Law/f;->a:LA/w;

    invoke-virtual {v0}, LA/w;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Law/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
