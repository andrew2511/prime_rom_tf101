.class public final enum Lcom/google/googlenav/appwidget/hotpot/widget/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

.field public static final enum b:Lcom/google/googlenav/appwidget/hotpot/widget/e;

.field public static final enum c:Lcom/google/googlenav/appwidget/hotpot/widget/e;

.field public static final enum d:Lcom/google/googlenav/appwidget/hotpot/widget/e;

.field private static final synthetic e:[Lcom/google/googlenav/appwidget/hotpot/widget/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;

    const-string v1, "PLACE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;

    const-string v1, "RATE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/hotpot/widget/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->b:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;

    const-string v1, "OPENING_RATINGS"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/hotpot/widget/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->c:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;

    const-string v1, "CLOSING_RATINGS"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/appwidget/hotpot/widget/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->d:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/appwidget/hotpot/widget/e;

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->b:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->c:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->d:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->e:[Lcom/google/googlenav/appwidget/hotpot/widget/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/widget/e;
    .locals 1

    const-class v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/hotpot/widget/e;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/hotpot/widget/e;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->e:[Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/hotpot/widget/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/hotpot/widget/e;

    return-object v0
.end method
