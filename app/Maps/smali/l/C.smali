.class public final enum Ll/C;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/C;

.field public static final enum b:Ll/C;

.field public static final enum c:Ll/C;

.field private static final synthetic d:[Ll/C;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ll/C;

    const-string v1, "LOCATION_CHANGED"

    invoke-direct {v0, v1, v2}, Ll/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/C;->a:Ll/C;

    new-instance v0, Ll/C;

    const-string v1, "OFF_ROUTE"

    invoke-direct {v0, v1, v3}, Ll/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/C;->b:Ll/C;

    new-instance v0, Ll/C;

    const-string v1, "LOCATION_LOST"

    invoke-direct {v0, v1, v4}, Ll/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/C;->c:Ll/C;

    const/4 v0, 0x3

    new-array v0, v0, [Ll/C;

    sget-object v1, Ll/C;->a:Ll/C;

    aput-object v1, v0, v2

    sget-object v1, Ll/C;->b:Ll/C;

    aput-object v1, v0, v3

    sget-object v1, Ll/C;->c:Ll/C;

    aput-object v1, v0, v4

    sput-object v0, Ll/C;->d:[Ll/C;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/C;
    .locals 1

    const-class v0, Ll/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/C;

    return-object p0
.end method

.method public static values()[Ll/C;
    .locals 1

    sget-object v0, Ll/C;->d:[Ll/C;

    invoke-virtual {v0}, [Ll/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/C;

    return-object v0
.end method
