.class public final enum Lcom/ecareme/pixwe/media/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/pixwe/media/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->NONE:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    new-instance v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->INTERNAL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    new-instance v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->EXTERNAL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    new-instance v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->ALL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    sget-object v1, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->NONE:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->INTERNAL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->EXTERNAL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->ALL:Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->ENUM$VALUES:[Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/pixwe/media/ImageManager$DataLocation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/pixwe/media/ImageManager$DataLocation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/pixwe/media/ImageManager$DataLocation;->ENUM$VALUES:[Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/pixwe/media/ImageManager$DataLocation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
