.class final enum Lcom/google/googlenav/appwidget/traffic/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum b:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum c:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum d:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum e:Lcom/google/googlenav/appwidget/traffic/g;

.field public static final enum f:Lcom/google/googlenav/appwidget/traffic/g;

.field private static final synthetic g:[Lcom/google/googlenav/appwidget/traffic/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->a:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->b:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "RED"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->c:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->d:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->e:Lcom/google/googlenav/appwidget/traffic/g;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/g;

    const-string v1, "SLEEPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->f:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/googlenav/appwidget/traffic/g;

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->a:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->b:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->c:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->d:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->e:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/g;->f:Lcom/google/googlenav/appwidget/traffic/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/g;->g:[Lcom/google/googlenav/appwidget/traffic/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/traffic/g;
    .locals 1

    const-class v0, Lcom/google/googlenav/appwidget/traffic/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/traffic/g;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/traffic/g;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/g;->g:[Lcom/google/googlenav/appwidget/traffic/g;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/traffic/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/traffic/g;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 3

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/a;->a:[I

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown traffic light enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f0203a7

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0203ab

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0203a9

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0203a6

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0203a8

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0203aa

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
