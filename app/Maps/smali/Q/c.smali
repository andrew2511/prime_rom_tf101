.class final enum LQ/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LQ/c;

.field public static final enum b:LQ/c;

.field private static final synthetic c:[LQ/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LQ/c;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, LQ/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ/c;->a:LQ/c;

    new-instance v0, LQ/c;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, LQ/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ/c;->b:LQ/c;

    const/4 v0, 0x2

    new-array v0, v0, [LQ/c;

    sget-object v1, LQ/c;->a:LQ/c;

    aput-object v1, v0, v2

    sget-object v1, LQ/c;->b:LQ/c;

    aput-object v1, v0, v3

    sput-object v0, LQ/c;->c:[LQ/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQ/c;
    .locals 1

    const-class v0, LQ/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ/c;

    return-object p0
.end method

.method public static values()[LQ/c;
    .locals 1

    sget-object v0, LQ/c;->c:[LQ/c;

    invoke-virtual {v0}, [LQ/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ/c;

    return-object v0
.end method
