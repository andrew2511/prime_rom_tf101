.class public final enum Lcom/google/android/maps/driveabout/vector/aW;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/aW;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/aW;

.field private static final synthetic c:[Lcom/google/android/maps/driveabout/vector/aW;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aW;

    const-string v1, "UPPER_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aW;

    const-string v1, "UPPER_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/aW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aW;->b:Lcom/google/android/maps/driveabout/vector/aW;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aW;->b:Lcom/google/android/maps/driveabout/vector/aW;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aW;->c:[Lcom/google/android/maps/driveabout/vector/aW;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/aW;
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/vector/aW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/aW;

    return-object p0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/aW;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aW;->c:[Lcom/google/android/maps/driveabout/vector/aW;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/aW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/aW;

    return-object v0
.end method
