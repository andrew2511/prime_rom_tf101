.class public Lad/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lad/r;

.field public static final b:Lad/r;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lad/r;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lad/r;-><init>(I)V

    sput-object v0, Lad/r;->a:Lad/r;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {v0}, Lad/r;->a([I)Lad/r;

    move-result-object v0

    sput-object v0, Lad/r;->b:Lad/r;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lad/r;->c:I

    return-void
.end method

.method public static a(Lad/r;Lad/r;)Lad/r;
    .locals 3

    new-instance v0, Lad/r;

    iget v1, p0, Lad/r;->c:I

    iget v2, p1, Lad/r;->c:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-direct {v0, v1}, Lad/r;-><init>(I)V

    return-object v0
.end method

.method public static varargs a([I)Lad/r;
    .locals 2

    new-instance v0, Lad/r;

    invoke-static {p0}, Lad/r;->b([I)I

    move-result v1

    invoke-direct {v0, v1}, Lad/r;-><init>(I)V

    return-object v0
.end method

.method static varargs b([I)I
    .locals 5

    const/4 v1, 0x0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lad/r;->c:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lad/r;

    if-eqz v0, :cond_1

    check-cast p1, Lad/r;

    iget v0, p1, Lad/r;->c:I

    iget v1, p0, Lad/r;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lad/r;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    move v0, v4

    :goto_0
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lad/r;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
