.class public final enum Landroid/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum POSITVE_Z:Landroid/renderscript/Type$CubemapFace;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITVE_X"

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 50
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_X"

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 51
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITVE_Y"

    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 52
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Y"

    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 53
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITVE_Z"

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 54
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Z"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/renderscript/Type$CubemapFace;

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Type$CubemapFace;
    .registers 2
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Landroid/renderscript/Type$CubemapFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/renderscript/Type$CubemapFace;

    return-object p0
.end method

.method public static values()[Landroid/renderscript/Type$CubemapFace;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v0}, [Landroid/renderscript/Type$CubemapFace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Type$CubemapFace;

    return-object v0
.end method
