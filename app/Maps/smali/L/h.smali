.class final enum LL/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LL/h;

.field public static final enum b:LL/h;

.field private static final synthetic c:[LL/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LL/h;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, LL/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/h;->a:LL/h;

    new-instance v0, LL/h;

    const-string v1, "UPLOAD_WAIT"

    invoke-direct {v0, v1, v3}, LL/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/h;->b:LL/h;

    const/4 v0, 0x2

    new-array v0, v0, [LL/h;

    sget-object v1, LL/h;->a:LL/h;

    aput-object v1, v0, v2

    sget-object v1, LL/h;->b:LL/h;

    aput-object v1, v0, v3

    sput-object v0, LL/h;->c:[LL/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LL/h;
    .locals 1

    const-class v0, LL/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LL/h;

    return-object p0
.end method

.method public static values()[LL/h;
    .locals 1

    sget-object v0, LL/h;->c:[LL/h;

    invoke-virtual {v0}, [LL/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LL/h;

    return-object v0
.end method
