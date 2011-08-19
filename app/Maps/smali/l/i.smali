.class public final enum Ll/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ll/i;

.field public static final enum b:Ll/i;

.field public static final enum c:Ll/i;

.field public static final enum d:Ll/i;

.field public static final enum e:Ll/i;

.field public static final enum f:Ll/i;

.field private static final synthetic g:[Ll/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ll/i;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3}, Ll/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i;->a:Ll/i;

    new-instance v0, Ll/i;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, Ll/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i;->b:Ll/i;

    new-instance v0, Ll/i;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v5}, Ll/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i;->c:Ll/i;

    new-instance v0, Ll/i;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v6}, Ll/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i;->d:Ll/i;

    new-instance v0, Ll/i;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v7}, Ll/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i;->e:Ll/i;

    new-instance v0, Ll/i;

    const-string v1, "USER_INPUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ll/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/i;->f:Ll/i;

    const/4 v0, 0x6

    new-array v0, v0, [Ll/i;

    sget-object v1, Ll/i;->a:Ll/i;

    aput-object v1, v0, v3

    sget-object v1, Ll/i;->b:Ll/i;

    aput-object v1, v0, v4

    sget-object v1, Ll/i;->c:Ll/i;

    aput-object v1, v0, v5

    sget-object v1, Ll/i;->d:Ll/i;

    aput-object v1, v0, v6

    sget-object v1, Ll/i;->e:Ll/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ll/i;->f:Ll/i;

    aput-object v2, v0, v1

    sput-object v0, Ll/i;->g:[Ll/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ll/s;)Ll/i;
    .locals 2

    sget-object v0, Ll/K;->a:[I

    invoke-virtual {p0}, Ll/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Ll/i;->c:Ll/i;

    goto :goto_0

    :pswitch_1
    sget-object v0, Ll/i;->d:Ll/i;

    goto :goto_0

    :pswitch_2
    sget-object v0, Ll/i;->a:Ll/i;

    goto :goto_0

    :pswitch_3
    sget-object v0, Ll/i;->b:Ll/i;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ll/i;
    .locals 1

    const-class v0, Ll/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/i;

    return-object p0
.end method

.method public static values()[Ll/i;
    .locals 1

    sget-object v0, Ll/i;->g:[Ll/i;

    invoke-virtual {v0}, [Ll/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/i;

    return-object v0
.end method


# virtual methods
.method public a()Ll/s;
    .locals 2

    sget-object v0, Ll/K;->b:[I

    invoke-virtual {p0}, Ll/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Ll/s;->a:Ll/s;

    goto :goto_0

    :pswitch_1
    sget-object v0, Ll/s;->b:Ll/s;

    goto :goto_0

    :pswitch_2
    sget-object v0, Ll/s;->c:Ll/s;

    goto :goto_0

    :pswitch_3
    sget-object v0, Ll/s;->d:Ll/s;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
