.class public final enum Lcom/google/android/motiongesture/GestureEvent$Type;
.super Ljava/lang/Enum;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/GestureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/motiongesture/GestureEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/motiongesture/GestureEvent$Type;

.field public static final enum BringToEar:Lcom/google/android/motiongesture/GestureEvent$Type;

.field public static final enum Drop:Lcom/google/android/motiongesture/GestureEvent$Type;

.field public static final enum Generic:Lcom/google/android/motiongesture/GestureEvent$Type;

.field public static final enum PlaceFaceDown:Lcom/google/android/motiongesture/GestureEvent$Type;

.field public static final enum Shake:Lcom/google/android/motiongesture/GestureEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/google/android/motiongesture/GestureEvent$Type;

    const-string v1, "Generic"

    invoke-direct {v0, v1, v2}, Lcom/google/android/motiongesture/GestureEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->Generic:Lcom/google/android/motiongesture/GestureEvent$Type;

    new-instance v0, Lcom/google/android/motiongesture/GestureEvent$Type;

    const-string v1, "BringToEar"

    invoke-direct {v0, v1, v3}, Lcom/google/android/motiongesture/GestureEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->BringToEar:Lcom/google/android/motiongesture/GestureEvent$Type;

    new-instance v0, Lcom/google/android/motiongesture/GestureEvent$Type;

    const-string v1, "PlaceFaceDown"

    invoke-direct {v0, v1, v4}, Lcom/google/android/motiongesture/GestureEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->PlaceFaceDown:Lcom/google/android/motiongesture/GestureEvent$Type;

    new-instance v0, Lcom/google/android/motiongesture/GestureEvent$Type;

    const-string v1, "Shake"

    invoke-direct {v0, v1, v5}, Lcom/google/android/motiongesture/GestureEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->Shake:Lcom/google/android/motiongesture/GestureEvent$Type;

    new-instance v0, Lcom/google/android/motiongesture/GestureEvent$Type;

    const-string v1, "Drop"

    invoke-direct {v0, v1, v6}, Lcom/google/android/motiongesture/GestureEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->Drop:Lcom/google/android/motiongesture/GestureEvent$Type;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/motiongesture/GestureEvent$Type;

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Generic:Lcom/google/android/motiongesture/GestureEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->BringToEar:Lcom/google/android/motiongesture/GestureEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->PlaceFaceDown:Lcom/google/android/motiongesture/GestureEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Shake:Lcom/google/android/motiongesture/GestureEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/motiongesture/GestureEvent$Type;->Drop:Lcom/google/android/motiongesture/GestureEvent$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->$VALUES:[Lcom/google/android/motiongesture/GestureEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/motiongesture/GestureEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/google/android/motiongesture/GestureEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/motiongesture/GestureEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/motiongesture/GestureEvent$Type;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/motiongesture/GestureEvent$Type;->$VALUES:[Lcom/google/android/motiongesture/GestureEvent$Type;

    invoke-virtual {v0}, [Lcom/google/android/motiongesture/GestureEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/motiongesture/GestureEvent$Type;

    return-object v0
.end method
