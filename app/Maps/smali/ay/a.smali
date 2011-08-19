.class public final enum Lay/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lay/a;

.field public static final enum b:Lay/a;

.field public static final enum c:Lay/a;

.field private static final synthetic e:[Lay/a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lay/a;

    const-string v1, "CLOUD_LIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lay/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lay/a;->a:Lay/a;

    new-instance v0, Lay/a;

    const-string v1, "CLOUD_CHANCE_HEAVY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lay/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lay/a;->b:Lay/a;

    new-instance v0, Lay/a;

    const-string v1, "CLOUD_HEAVY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v2}, Lay/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lay/a;->c:Lay/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lay/a;

    sget-object v1, Lay/a;->a:Lay/a;

    aput-object v1, v0, v3

    sget-object v1, Lay/a;->b:Lay/a;

    aput-object v1, v0, v4

    sget-object v1, Lay/a;->c:Lay/a;

    aput-object v1, v0, v5

    sput-object v0, Lay/a;->e:[Lay/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lay/a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lay/a;
    .locals 1

    const-class v0, Lay/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lay/a;

    return-object p0
.end method

.method public static values()[Lay/a;
    .locals 1

    sget-object v0, Lay/a;->e:[Lay/a;

    invoke-virtual {v0}, [Lay/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lay/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lay/a;->d:I

    return v0
.end method
