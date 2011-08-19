.class public final enum Lt/X;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lt/X;

.field public static final enum b:Lt/X;

.field public static final enum c:Lt/X;

.field public static final enum d:Lt/X;

.field public static final enum e:Lt/X;

.field private static final synthetic g:[Lt/X;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    new-instance v0, Lt/X;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lt/X;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt/X;->a:Lt/X;

    new-instance v0, Lt/X;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lt/X;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt/X;->b:Lt/X;

    new-instance v0, Lt/X;

    const-string v1, "PREFETCH_OFFLINE_MAP"

    invoke-direct {v0, v1, v6, v4}, Lt/X;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt/X;->c:Lt/X;

    new-instance v0, Lt/X;

    const-string v1, "PREFETCH_ROUTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lt/X;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt/X;->d:Lt/X;

    new-instance v0, Lt/X;

    const-string v1, "PREFETCH_AREA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lt/X;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt/X;->e:Lt/X;

    const/4 v0, 0x5

    new-array v0, v0, [Lt/X;

    sget-object v1, Lt/X;->a:Lt/X;

    aput-object v1, v0, v5

    sget-object v1, Lt/X;->b:Lt/X;

    aput-object v1, v0, v3

    sget-object v1, Lt/X;->c:Lt/X;

    aput-object v1, v0, v6

    sget-object v1, Lt/X;->d:Lt/X;

    aput-object v1, v0, v7

    sget-object v1, Lt/X;->e:Lt/X;

    aput-object v1, v0, v4

    sput-object v0, Lt/X;->g:[Lt/X;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lt/X;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt/X;
    .locals 1

    const-class v0, Lt/X;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt/X;

    return-object p0
.end method

.method public static values()[Lt/X;
    .locals 1

    sget-object v0, Lt/X;->g:[Lt/X;

    invoke-virtual {v0}, [Lt/X;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt/X;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lt/X;->f:I

    sget-object v1, Lt/X;->a:Lt/X;

    iget v1, v1, Lt/X;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lt/X;->f:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lt/X;->f:I

    shl-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lt/X;->f:I

    return v0
.end method
