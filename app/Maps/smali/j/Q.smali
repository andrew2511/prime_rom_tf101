.class final enum Lj/Q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lj/Q;

.field public static final enum b:Lj/Q;

.field public static final enum c:Lj/Q;

.field public static final enum d:Lj/Q;

.field private static final synthetic e:[Lj/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lj/Q;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lj/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/Q;->a:Lj/Q;

    new-instance v0, Lj/Q;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lj/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/Q;->b:Lj/Q;

    new-instance v0, Lj/Q;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lj/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/Q;->c:Lj/Q;

    new-instance v0, Lj/Q;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lj/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj/Q;->d:Lj/Q;

    const/4 v0, 0x4

    new-array v0, v0, [Lj/Q;

    sget-object v1, Lj/Q;->a:Lj/Q;

    aput-object v1, v0, v2

    sget-object v1, Lj/Q;->b:Lj/Q;

    aput-object v1, v0, v3

    sget-object v1, Lj/Q;->c:Lj/Q;

    aput-object v1, v0, v4

    sget-object v1, Lj/Q;->d:Lj/Q;

    aput-object v1, v0, v5

    sput-object v0, Lj/Q;->e:[Lj/Q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj/Q;
    .locals 1

    const-class v0, Lj/Q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj/Q;

    return-object p0
.end method

.method public static values()[Lj/Q;
    .locals 1

    sget-object v0, Lj/Q;->e:[Lj/Q;

    invoke-virtual {v0}, [Lj/Q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/Q;

    return-object v0
.end method
