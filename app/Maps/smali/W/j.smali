.class public final enum LW/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LW/j;

.field public static final enum b:LW/j;

.field public static final enum c:LW/j;

.field public static final enum d:LW/j;

.field private static final synthetic e:[LW/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LW/j;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, LW/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/j;->a:LW/j;

    new-instance v0, LW/j;

    const-string v1, "LOW_CONFIDENCE"

    invoke-direct {v0, v1, v3}, LW/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/j;->b:LW/j;

    new-instance v0, LW/j;

    const-string v1, "MEDIUM_CONFIDENCE"

    invoke-direct {v0, v1, v4}, LW/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/j;->c:LW/j;

    new-instance v0, LW/j;

    const-string v1, "HIGH_CONFIDENCE"

    invoke-direct {v0, v1, v5}, LW/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW/j;->d:LW/j;

    const/4 v0, 0x4

    new-array v0, v0, [LW/j;

    sget-object v1, LW/j;->a:LW/j;

    aput-object v1, v0, v2

    sget-object v1, LW/j;->b:LW/j;

    aput-object v1, v0, v3

    sget-object v1, LW/j;->c:LW/j;

    aput-object v1, v0, v4

    sget-object v1, LW/j;->d:LW/j;

    aput-object v1, v0, v5

    sput-object v0, LW/j;->e:[LW/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()LW/j;
    .locals 1

    sget-object v0, LW/j;->d:LW/j;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LW/j;
    .locals 1

    const-class v0, LW/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW/j;

    return-object p0
.end method

.method public static values()[LW/j;
    .locals 1

    sget-object v0, LW/j;->e:[LW/j;

    invoke-virtual {v0}, [LW/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW/j;

    return-object v0
.end method
