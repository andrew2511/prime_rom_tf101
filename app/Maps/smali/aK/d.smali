.class public final enum LaK/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaK/d;

.field public static final enum b:LaK/d;

.field public static final enum c:LaK/d;

.field private static final synthetic d:[LaK/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LaK/d;

    const-string v1, "ROUND"

    invoke-direct {v0, v1, v2}, LaK/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaK/d;->a:LaK/d;

    new-instance v0, LaK/d;

    const-string v1, "FLOOR"

    invoke-direct {v0, v1, v3}, LaK/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaK/d;->b:LaK/d;

    new-instance v0, LaK/d;

    const-string v1, "CEILING"

    invoke-direct {v0, v1, v4}, LaK/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaK/d;->c:LaK/d;

    const/4 v0, 0x3

    new-array v0, v0, [LaK/d;

    sget-object v1, LaK/d;->a:LaK/d;

    aput-object v1, v0, v2

    sget-object v1, LaK/d;->b:LaK/d;

    aput-object v1, v0, v3

    sget-object v1, LaK/d;->c:LaK/d;

    aput-object v1, v0, v4

    sput-object v0, LaK/d;->d:[LaK/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaK/d;
    .locals 1

    const-class v0, LaK/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LaK/d;

    return-object p0
.end method

.method public static values()[LaK/d;
    .locals 1

    sget-object v0, LaK/d;->d:[LaK/d;

    invoke-virtual {v0}, [LaK/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaK/d;

    return-object v0
.end method
