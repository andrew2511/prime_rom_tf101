.class public final enum Lcom/google/android/maps/driveabout/vector/F;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/F;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/F;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/F;

.field private static final synthetic d:[Lcom/google/android/maps/driveabout/vector/F;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/F;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/F;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/F;->b:Lcom/google/android/maps/driveabout/vector/F;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/F;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/F;->c:Lcom/google/android/maps/driveabout/vector/F;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/F;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/F;->b:Lcom/google/android/maps/driveabout/vector/F;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/F;->c:Lcom/google/android/maps/driveabout/vector/F;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/vector/F;->d:[Lcom/google/android/maps/driveabout/vector/F;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/F;
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/vector/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/F;

    return-object p0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/F;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/F;->d:[Lcom/google/android/maps/driveabout/vector/F;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/F;

    return-object v0
.end method
