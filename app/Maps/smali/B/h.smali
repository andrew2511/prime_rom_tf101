.class public final enum LB/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LB/h;

.field public static final enum b:LB/h;

.field public static final enum c:LB/h;

.field public static final enum d:LB/h;

.field public static final enum e:LB/h;

.field private static final synthetic f:[LB/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LB/h;

    const-string v1, "FIRST_WALK"

    invoke-direct {v0, v1, v2}, LB/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/h;->a:LB/h;

    new-instance v0, LB/h;

    const-string v1, "BOARD"

    invoke-direct {v0, v1, v3}, LB/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/h;->b:LB/h;

    new-instance v0, LB/h;

    const-string v1, "STAY"

    invoke-direct {v0, v1, v4}, LB/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/h;->c:LB/h;

    new-instance v0, LB/h;

    const-string v1, "GET_OFF"

    invoke-direct {v0, v1, v5}, LB/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/h;->d:LB/h;

    new-instance v0, LB/h;

    const-string v1, "DESTINATION"

    invoke-direct {v0, v1, v6}, LB/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/h;->e:LB/h;

    const/4 v0, 0x5

    new-array v0, v0, [LB/h;

    sget-object v1, LB/h;->a:LB/h;

    aput-object v1, v0, v2

    sget-object v1, LB/h;->b:LB/h;

    aput-object v1, v0, v3

    sget-object v1, LB/h;->c:LB/h;

    aput-object v1, v0, v4

    sget-object v1, LB/h;->d:LB/h;

    aput-object v1, v0, v5

    sget-object v1, LB/h;->e:LB/h;

    aput-object v1, v0, v6

    sput-object v0, LB/h;->f:[LB/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB/h;
    .locals 1

    const-class v0, LB/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/h;

    return-object p0
.end method

.method public static values()[LB/h;
    .locals 1

    sget-object v0, LB/h;->f:[LB/h;

    invoke-virtual {v0}, [LB/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/h;

    return-object v0
.end method
