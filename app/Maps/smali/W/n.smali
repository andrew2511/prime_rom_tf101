.class public final enum LW/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LW/n;

.field public static final enum b:LW/n;

.field public static final enum c:LW/n;

.field private static final synthetic d:[LW/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LW/n;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, LW/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/n;->a:LW/n;

    new-instance v0, LW/n;

    const-string v1, "NO_LOCATION"

    invoke-direct {v0, v1, v3}, LW/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/n;->b:LW/n;

    new-instance v0, LW/n;

    const-string v1, "CACHE_MISS"

    invoke-direct {v0, v1, v4}, LW/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/n;->c:LW/n;

    const/4 v0, 0x3

    new-array v0, v0, [LW/n;

    sget-object v1, LW/n;->a:LW/n;

    aput-object v1, v0, v2

    sget-object v1, LW/n;->b:LW/n;

    aput-object v1, v0, v3

    sget-object v1, LW/n;->c:LW/n;

    aput-object v1, v0, v4

    sput-object v0, LW/n;->d:[LW/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW/n;
    .locals 1

    const-class v0, LW/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW/n;

    return-object p0
.end method

.method public static values()[LW/n;
    .locals 1

    sget-object v0, LW/n;->d:[LW/n;

    invoke-virtual {v0}, [LW/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW/n;

    return-object v0
.end method
