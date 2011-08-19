.class public final enum Laf/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Laf/e;

.field public static final enum b:Laf/e;

.field private static final synthetic d:[Laf/e;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Laf/e;

    const-string v1, "SNOW_LIGHT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, Laf/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laf/e;->a:Laf/e;

    new-instance v0, Laf/e;

    const-string v1, "SNOW_HEAVY"

    const/16 v2, 0x94

    invoke-direct {v0, v1, v4, v2}, Laf/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laf/e;->b:Laf/e;

    const/4 v0, 0x2

    new-array v0, v0, [Laf/e;

    sget-object v1, Laf/e;->a:Laf/e;

    aput-object v1, v0, v3

    sget-object v1, Laf/e;->b:Laf/e;

    aput-object v1, v0, v4

    sput-object v0, Laf/e;->d:[Laf/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laf/e;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laf/e;
    .locals 1

    const-class v0, Laf/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laf/e;

    return-object p0
.end method

.method public static values()[Laf/e;
    .locals 1

    sget-object v0, Laf/e;->d:[Laf/e;

    invoke-virtual {v0}, [Laf/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laf/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Laf/e;->c:I

    return v0
.end method
