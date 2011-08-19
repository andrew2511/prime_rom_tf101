.class final enum LL/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LL/p;

.field public static final enum b:LL/p;

.field public static final enum c:LL/p;

.field public static final enum d:LL/p;

.field public static final enum e:LL/p;

.field public static final enum f:LL/p;

.field private static final synthetic g:[LL/p;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LL/p;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, LL/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/p;->a:LL/p;

    new-instance v0, LL/p;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, LL/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/p;->b:LL/p;

    new-instance v0, LL/p;

    const-string v1, "GPS_WAIT"

    invoke-direct {v0, v1, v5}, LL/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/p;->c:LL/p;

    new-instance v0, LL/p;

    const-string v1, "SCAN_WAIT"

    invoke-direct {v0, v1, v6}, LL/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/p;->d:LL/p;

    new-instance v0, LL/p;

    const-string v1, "POST_SCAN_GPS_WAIT"

    invoke-direct {v0, v1, v7}, LL/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/p;->e:LL/p;

    new-instance v0, LL/p;

    const-string v1, "UPLOAD_WAIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LL/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, LL/p;->f:LL/p;

    const/4 v0, 0x6

    new-array v0, v0, [LL/p;

    sget-object v1, LL/p;->a:LL/p;

    aput-object v1, v0, v3

    sget-object v1, LL/p;->b:LL/p;

    aput-object v1, v0, v4

    sget-object v1, LL/p;->c:LL/p;

    aput-object v1, v0, v5

    sget-object v1, LL/p;->d:LL/p;

    aput-object v1, v0, v6

    sget-object v1, LL/p;->e:LL/p;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LL/p;->f:LL/p;

    aput-object v2, v0, v1

    sput-object v0, LL/p;->g:[LL/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LL/p;
    .locals 1

    const-class v0, LL/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LL/p;

    return-object p0
.end method

.method public static values()[LL/p;
    .locals 1

    sget-object v0, LL/p;->g:[LL/p;

    invoke-virtual {v0}, [LL/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LL/p;

    return-object v0
.end method
