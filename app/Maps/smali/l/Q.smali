.class public final enum Ll/Q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/Q;

.field public static final enum b:Ll/Q;

.field public static final enum c:Ll/Q;

.field public static final enum d:Ll/Q;

.field private static final synthetic e:[Ll/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ll/Q;

    const-string v1, "OFF_ROUTE"

    invoke-direct {v0, v1, v2}, Ll/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/Q;->a:Ll/Q;

    new-instance v0, Ll/Q;

    const-string v1, "NEEDS_MORE_FIXES"

    invoke-direct {v0, v1, v3}, Ll/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/Q;->b:Ll/Q;

    new-instance v0, Ll/Q;

    const-string v1, "ALMOST_SURE"

    invoke-direct {v0, v1, v4}, Ll/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/Q;->c:Ll/Q;

    new-instance v0, Ll/Q;

    const-string v1, "CERTAIN"

    invoke-direct {v0, v1, v5}, Ll/Q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/Q;->d:Ll/Q;

    const/4 v0, 0x4

    new-array v0, v0, [Ll/Q;

    sget-object v1, Ll/Q;->a:Ll/Q;

    aput-object v1, v0, v2

    sget-object v1, Ll/Q;->b:Ll/Q;

    aput-object v1, v0, v3

    sget-object v1, Ll/Q;->c:Ll/Q;

    aput-object v1, v0, v4

    sget-object v1, Ll/Q;->d:Ll/Q;

    aput-object v1, v0, v5

    sput-object v0, Ll/Q;->e:[Ll/Q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/Q;
    .locals 1

    const-class v0, Ll/Q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/Q;

    return-object p0
.end method

.method public static values()[Ll/Q;
    .locals 1

    sget-object v0, Ll/Q;->e:[Ll/Q;

    invoke-virtual {v0}, [Ll/Q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/Q;

    return-object v0
.end method
