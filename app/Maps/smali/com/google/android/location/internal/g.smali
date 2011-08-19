.class public final enum Lcom/google/android/location/internal/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/location/internal/g;

.field public static final enum b:Lcom/google/android/location/internal/g;

.field public static final enum c:Lcom/google/android/location/internal/g;

.field private static final synthetic e:[Lcom/google/android/location/internal/g;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/location/internal/g;

    const-string v1, "ANDROID"

    const-string v2, "com.google.android.location"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/location/internal/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/g;->a:Lcom/google/android/location/internal/g;

    new-instance v0, Lcom/google/android/location/internal/g;

    const-string v1, "GMM"

    const-string v2, "com.google.android.apps.maps"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/location/internal/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/g;->b:Lcom/google/android/location/internal/g;

    new-instance v0, Lcom/google/android/location/internal/g;

    const-string v1, "NONE"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/location/internal/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/g;->c:Lcom/google/android/location/internal/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/internal/g;

    sget-object v1, Lcom/google/android/location/internal/g;->a:Lcom/google/android/location/internal/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/internal/g;->b:Lcom/google/android/location/internal/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/internal/g;->c:Lcom/google/android/location/internal/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/internal/g;->e:[Lcom/google/android/location/internal/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/location/internal/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/internal/g;
    .locals 1

    const-class v0, Lcom/google/android/location/internal/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/location/internal/g;

    return-object p0
.end method

.method public static values()[Lcom/google/android/location/internal/g;
    .locals 1

    sget-object v0, Lcom/google/android/location/internal/g;->e:[Lcom/google/android/location/internal/g;

    invoke-virtual {v0}, [Lcom/google/android/location/internal/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/internal/g;

    return-object v0
.end method
