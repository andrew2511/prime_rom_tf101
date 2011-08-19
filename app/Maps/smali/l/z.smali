.class public final enum Ll/z;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/z;

.field public static final enum b:Ll/z;

.field public static final enum c:Ll/z;

.field private static final synthetic d:[Ll/z;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ll/z;

    const-string v1, "MISSED_STOP"

    invoke-direct {v0, v1, v2}, Ll/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/z;->a:Ll/z;

    new-instance v0, Ll/z;

    const-string v1, "WRONG_WAY"

    invoke-direct {v0, v1, v3}, Ll/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/z;->b:Ll/z;

    new-instance v0, Ll/z;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Ll/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/z;->c:Ll/z;

    const/4 v0, 0x3

    new-array v0, v0, [Ll/z;

    sget-object v1, Ll/z;->a:Ll/z;

    aput-object v1, v0, v2

    sget-object v1, Ll/z;->b:Ll/z;

    aput-object v1, v0, v3

    sget-object v1, Ll/z;->c:Ll/z;

    aput-object v1, v0, v4

    sput-object v0, Ll/z;->d:[Ll/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/z;
    .locals 1

    const-class v0, Ll/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/z;

    return-object p0
.end method

.method public static values()[Ll/z;
    .locals 1

    sget-object v0, Ll/z;->d:[Ll/z;

    invoke-virtual {v0}, [Ll/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/z;

    return-object v0
.end method
