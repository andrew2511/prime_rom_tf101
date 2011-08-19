.class public LG/D;
.super Ljava/lang/Object;


# static fields
.field public static final b:LG/D;


# instance fields
.field protected final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG/D;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LG/D;-><init>(I)V

    sput-object v0, LG/D;->b:LG/D;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/D;->a:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)LG/D;
    .locals 2

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    new-instance v1, LG/D;

    invoke-direct {v1, v0}, LG/D;-><init>(I)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, LG/D;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
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
    if-nez p1, :cond_1

    move v0, v2

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
    check-cast p1, LG/D;

    iget v0, p0, LG/D;->a:I

    iget v1, p1, LG/D;->a:I

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LG/D;->a:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
