.class public final enum Lcom/google/googlenav/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/r;

.field public static final enum b:Lcom/google/googlenav/r;

.field private static final synthetic c:[Lcom/google/googlenav/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/r;

    const-string v1, "ORIENTATION_PROVIDER_ACTIVITY_RESUME"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/r;->a:Lcom/google/googlenav/r;

    new-instance v0, Lcom/google/googlenav/r;

    const-string v1, "START_MOTION_RECOGNIZER"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/r;->b:Lcom/google/googlenav/r;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/r;

    sget-object v1, Lcom/google/googlenav/r;->a:Lcom/google/googlenav/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/r;->b:Lcom/google/googlenav/r;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/r;->c:[Lcom/google/googlenav/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/r;
    .locals 1

    const-class v0, Lcom/google/googlenav/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/r;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/r;
    .locals 1

    sget-object v0, Lcom/google/googlenav/r;->c:[Lcom/google/googlenav/r;

    invoke-virtual {v0}, [Lcom/google/googlenav/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/r;

    return-object v0
.end method
