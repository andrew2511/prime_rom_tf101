.class public final enum Ll/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/a;

.field public static final enum b:Ll/a;

.field public static final enum c:Ll/a;

.field public static final enum d:Ll/a;

.field private static final synthetic e:[Ll/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ll/a;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Ll/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/a;->a:Ll/a;

    new-instance v0, Ll/a;

    const-string v1, "ALMOST_INVALID"

    invoke-direct {v0, v1, v3}, Ll/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/a;->b:Ll/a;

    new-instance v0, Ll/a;

    const-string v1, "COULD_BE_VALID"

    invoke-direct {v0, v1, v4}, Ll/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/a;->c:Ll/a;

    new-instance v0, Ll/a;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v5}, Ll/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/a;->d:Ll/a;

    const/4 v0, 0x4

    new-array v0, v0, [Ll/a;

    sget-object v1, Ll/a;->a:Ll/a;

    aput-object v1, v0, v2

    sget-object v1, Ll/a;->b:Ll/a;

    aput-object v1, v0, v3

    sget-object v1, Ll/a;->c:Ll/a;

    aput-object v1, v0, v4

    sget-object v1, Ll/a;->d:Ll/a;

    aput-object v1, v0, v5

    sput-object v0, Ll/a;->e:[Ll/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/a;
    .locals 1

    const-class v0, Ll/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/a;

    return-object p0
.end method

.method public static values()[Ll/a;
    .locals 1

    sget-object v0, Ll/a;->e:[Ll/a;

    invoke-virtual {v0}, [Ll/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/a;

    return-object v0
.end method
