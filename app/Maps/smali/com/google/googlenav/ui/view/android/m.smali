.class final enum Lcom/google/googlenav/ui/view/android/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/view/android/m;

.field public static final enum b:Lcom/google/googlenav/ui/view/android/m;

.field private static final synthetic c:[Lcom/google/googlenav/ui/view/android/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/m;

    const-string v1, "DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/m;

    new-instance v0, Lcom/google/googlenav/ui/view/android/m;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/android/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/m;->b:Lcom/google/googlenav/ui/view/android/m;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/m;

    sget-object v1, Lcom/google/googlenav/ui/view/android/m;->a:Lcom/google/googlenav/ui/view/android/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/view/android/m;->b:Lcom/google/googlenav/ui/view/android/m;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/ui/view/android/m;->c:[Lcom/google/googlenav/ui/view/android/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/m;
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/view/android/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/m;

    return-object p0
.end method

.method public static values()[Lcom/google/googlenav/ui/view/android/m;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/m;->c:[Lcom/google/googlenav/ui/view/android/m;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/view/android/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/view/android/m;

    return-object v0
.end method
