.class public final enum Lcom/google/googlenav/ui/view/android/rideabout/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field public static final enum b:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field public static final enum c:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field private static final synthetic d:[Lcom/google/googlenav/ui/view/android/rideabout/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/j;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/j;

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/j;

    const-string v1, "TRANSIT"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/j;

    const-string v1, "WALK"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/view/android/rideabout/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->d:[Lcom/google/googlenav/ui/view/android/rideabout/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/rideabout/j;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/ui/view/android/rideabout/j;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->d:[Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/view/android/rideabout/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    return-object v0
.end method
