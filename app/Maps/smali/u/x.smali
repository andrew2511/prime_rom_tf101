.class public final enum Lu/x;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lu/x;

.field public static final enum b:Lu/x;

.field public static final enum c:Lu/x;

.field public static final enum d:Lu/x;

.field private static final synthetic e:[Lu/x;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lu/x;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v2}, Lu/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/x;->a:Lu/x;

    new-instance v0, Lu/x;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v3}, Lu/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/x;->b:Lu/x;

    new-instance v0, Lu/x;

    const-string v1, "RED"

    invoke-direct {v0, v1, v4}, Lu/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/x;->c:Lu/x;

    new-instance v0, Lu/x;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lu/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/x;->d:Lu/x;

    const/4 v0, 0x4

    new-array v0, v0, [Lu/x;

    sget-object v1, Lu/x;->a:Lu/x;

    aput-object v1, v0, v2

    sget-object v1, Lu/x;->b:Lu/x;

    aput-object v1, v0, v3

    sget-object v1, Lu/x;->c:Lu/x;

    aput-object v1, v0, v4

    sget-object v1, Lu/x;->d:Lu/x;

    aput-object v1, v0, v5

    sput-object v0, Lu/x;->e:[Lu/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(II)Lu/x;
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lu/x;->d:Lu/x;

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p0, 0x64

    div-int/2addr v0, p1

    sget-object v1, Lu/x;->b:Lu/x;

    invoke-virtual {v1}, Lu/x;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v0, Lu/x;->a:Lu/x;

    goto :goto_0

    :cond_1
    sget-object v1, Lu/x;->c:Lu/x;

    invoke-virtual {v1}, Lu/x;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v0, Lu/x;->b:Lu/x;

    goto :goto_0

    :cond_2
    sget-object v0, Lu/x;->c:Lu/x;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/x;
    .locals 1

    const-class v0, Lu/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/x;

    return-object p0
.end method

.method public static values()[Lu/x;
    .locals 1

    sget-object v0, Lu/x;->e:[Lu/x;

    invoke-virtual {v0}, [Lu/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/x;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    sget-object v0, Lu/j;->a:[I

    invoke-virtual {p0}, Lu/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x28

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
