.class final enum Lcom/google/googlenav/appwidget/hotpot/B;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/hotpot/B;

.field public static final enum b:Lcom/google/googlenav/appwidget/hotpot/B;

.field public static final enum c:Lcom/google/googlenav/appwidget/hotpot/B;

.field private static final synthetic d:[Lcom/google/googlenav/appwidget/hotpot/B;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/B;

    const-string v1, "LocationUpdateNotPending"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->a:Lcom/google/googlenav/appwidget/hotpot/B;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/B;

    const-string v1, "LocationUpdatePending"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/hotpot/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->b:Lcom/google/googlenav/appwidget/hotpot/B;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/B;

    const-string v1, "UserSelectedLisingWhileLocationPending"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/hotpot/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->c:Lcom/google/googlenav/appwidget/hotpot/B;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/appwidget/hotpot/B;

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/B;->a:Lcom/google/googlenav/appwidget/hotpot/B;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/B;->b:Lcom/google/googlenav/appwidget/hotpot/B;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/B;->c:Lcom/google/googlenav/appwidget/hotpot/B;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->d:[Lcom/google/googlenav/appwidget/hotpot/B;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/B;
    .locals 1

    const-class v0, Lcom/google/googlenav/appwidget/hotpot/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/hotpot/B;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/hotpot/B;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->d:[Lcom/google/googlenav/appwidget/hotpot/B;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/hotpot/B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/hotpot/B;

    return-object v0
.end method
