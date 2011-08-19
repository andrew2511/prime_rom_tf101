.class public final enum LY/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LY/g;

.field public static final enum b:LY/g;

.field public static final enum c:LY/g;

.field private static final synthetic d:[LY/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LY/g;

    const-string v1, "NAVIGATION_LOCATION_KNOWN"

    invoke-direct {v0, v1, v2}, LY/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY/g;->a:LY/g;

    new-instance v0, LY/g;

    const-string v1, "NAVIGATION_LOCATION_LOST"

    invoke-direct {v0, v1, v3}, LY/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY/g;->b:LY/g;

    new-instance v0, LY/g;

    const-string v1, "NAVIGATION_OFF_ROUTE"

    invoke-direct {v0, v1, v4}, LY/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY/g;->c:LY/g;

    const/4 v0, 0x3

    new-array v0, v0, [LY/g;

    sget-object v1, LY/g;->a:LY/g;

    aput-object v1, v0, v2

    sget-object v1, LY/g;->b:LY/g;

    aput-object v1, v0, v3

    sget-object v1, LY/g;->c:LY/g;

    aput-object v1, v0, v4

    sput-object v0, LY/g;->d:[LY/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LY/g;
    .locals 1

    const-class v0, LY/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LY/g;

    return-object p0
.end method

.method public static values()[LY/g;
    .locals 1

    sget-object v0, LY/g;->d:[LY/g;

    invoke-virtual {v0}, [LY/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LY/g;

    return-object v0
.end method
