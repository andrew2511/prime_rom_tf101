.class public final enum Ll/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/o;

.field public static final enum b:Ll/o;

.field public static final enum c:Ll/o;

.field private static final synthetic d:[Ll/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ll/o;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Ll/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/o;->a:Ll/o;

    new-instance v0, Ll/o;

    const-string v1, "NOT_SURE"

    invoke-direct {v0, v1, v3}, Ll/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/o;->b:Ll/o;

    new-instance v0, Ll/o;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v4}, Ll/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/o;->c:Ll/o;

    const/4 v0, 0x3

    new-array v0, v0, [Ll/o;

    sget-object v1, Ll/o;->a:Ll/o;

    aput-object v1, v0, v2

    sget-object v1, Ll/o;->b:Ll/o;

    aput-object v1, v0, v3

    sget-object v1, Ll/o;->c:Ll/o;

    aput-object v1, v0, v4

    sput-object v0, Ll/o;->d:[Ll/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/o;
    .locals 1

    const-class v0, Ll/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/o;

    return-object p0
.end method

.method public static values()[Ll/o;
    .locals 1

    sget-object v0, Ll/o;->d:[Ll/o;

    invoke-virtual {v0}, [Ll/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/o;

    return-object v0
.end method
