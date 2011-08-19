.class final enum Lcom/google/googlenav/prefetch/android/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/prefetch/android/r;

.field public static final enum b:Lcom/google/googlenav/prefetch/android/r;

.field public static final enum c:Lcom/google/googlenav/prefetch/android/r;

.field private static final synthetic d:[Lcom/google/googlenav/prefetch/android/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/prefetch/android/r;

    const-string v1, "PREFETCHING"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/prefetch/android/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/r;->a:Lcom/google/googlenav/prefetch/android/r;

    new-instance v0, Lcom/google/googlenav/prefetch/android/r;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/prefetch/android/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/r;->b:Lcom/google/googlenav/prefetch/android/r;

    new-instance v0, Lcom/google/googlenav/prefetch/android/r;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/prefetch/android/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/r;->c:Lcom/google/googlenav/prefetch/android/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/prefetch/android/r;

    sget-object v1, Lcom/google/googlenav/prefetch/android/r;->a:Lcom/google/googlenav/prefetch/android/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/prefetch/android/r;->b:Lcom/google/googlenav/prefetch/android/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/prefetch/android/r;->c:Lcom/google/googlenav/prefetch/android/r;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/prefetch/android/r;->d:[Lcom/google/googlenav/prefetch/android/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/prefetch/android/r;
    .locals 1

    const-class v0, Lcom/google/googlenav/prefetch/android/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/prefetch/android/r;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/prefetch/android/r;
    .locals 1

    sget-object v0, Lcom/google/googlenav/prefetch/android/r;->d:[Lcom/google/googlenav/prefetch/android/r;

    invoke-virtual {v0}, [Lcom/google/googlenav/prefetch/android/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/prefetch/android/r;

    return-object v0
.end method
