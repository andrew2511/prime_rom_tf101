.class public final enum Lcom/google/android/maps/driveabout/vector/bB;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/bB;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/bB;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/bB;

.field private static final synthetic d:[Lcom/google/android/maps/driveabout/vector/bB;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bB;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bB;->a:Lcom/google/android/maps/driveabout/vector/bB;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bB;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/bB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bB;->b:Lcom/google/android/maps/driveabout/vector/bB;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bB;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/bB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bB;->c:Lcom/google/android/maps/driveabout/vector/bB;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/bB;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bB;->a:Lcom/google/android/maps/driveabout/vector/bB;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bB;->b:Lcom/google/android/maps/driveabout/vector/bB;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bB;->c:Lcom/google/android/maps/driveabout/vector/bB;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bB;->d:[Lcom/google/android/maps/driveabout/vector/bB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/bB;
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/vector/bB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/bB;

    return-object p0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/bB;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bB;->d:[Lcom/google/android/maps/driveabout/vector/bB;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/bB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/bB;

    return-object v0
.end method
