.class final enum Lcom/ecareme/pixwe/media/BitmapManager$State;
.super Ljava/lang/Enum;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/pixwe/media/BitmapManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOW:Lcom/ecareme/pixwe/media/BitmapManager$State;

.field public static final enum CANCEL:Lcom/ecareme/pixwe/media/BitmapManager$State;

.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/pixwe/media/BitmapManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/ecareme/pixwe/media/BitmapManager$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/BitmapManager$State;->CANCEL:Lcom/ecareme/pixwe/media/BitmapManager$State;

    new-instance v0, Lcom/ecareme/pixwe/media/BitmapManager$State;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/ecareme/pixwe/media/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/BitmapManager$State;->ALLOW:Lcom/ecareme/pixwe/media/BitmapManager$State;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ecareme/pixwe/media/BitmapManager$State;

    sget-object v1, Lcom/ecareme/pixwe/media/BitmapManager$State;->CANCEL:Lcom/ecareme/pixwe/media/BitmapManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecareme/pixwe/media/BitmapManager$State;->ALLOW:Lcom/ecareme/pixwe/media/BitmapManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ecareme/pixwe/media/BitmapManager$State;->ENUM$VALUES:[Lcom/ecareme/pixwe/media/BitmapManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/pixwe/media/BitmapManager$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/pixwe/media/BitmapManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/pixwe/media/BitmapManager$State;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/pixwe/media/BitmapManager$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/pixwe/media/BitmapManager$State;->ENUM$VALUES:[Lcom/ecareme/pixwe/media/BitmapManager$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/pixwe/media/BitmapManager$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
