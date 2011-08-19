.class public final enum Lcom/google/ads/AdSenseSpec$AdType;
.super Ljava/lang/Enum;
.source "AdSenseSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdSenseSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/AdSenseSpec$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/AdSenseSpec$AdType;

.field public static final enum IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

.field public static final enum TEXT:Lcom/google/ads/AdSenseSpec$AdType;

.field public static final enum TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;


# instance fields
.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    new-instance v0, Lcom/google/ads/AdSenseSpec$AdType;

    const-string v1, "TEXT"

    const-string v2, "text"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/AdSenseSpec$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSenseSpec$AdType;->TEXT:Lcom/google/ads/AdSenseSpec$AdType;

    .line 476
    new-instance v0, Lcom/google/ads/AdSenseSpec$AdType;

    const-string v1, "IMAGE"

    const-string v2, "image"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/AdSenseSpec$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSenseSpec$AdType;->IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    .line 478
    new-instance v0, Lcom/google/ads/AdSenseSpec$AdType;

    const-string v1, "TEXT_IMAGE"

    const-string v2, "text_image"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/AdSenseSpec$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    .line 472
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/AdSenseSpec$AdType;

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdType;->TEXT:Lcom/google/ads/AdSenseSpec$AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdType;->IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/AdSenseSpec$AdType;->$VALUES:[Lcom/google/ads/AdSenseSpec$AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "typeName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 483
    iput-object p3, p0, Lcom/google/ads/AdSenseSpec$AdType;->mTypeName:Ljava/lang/String;

    .line 484
    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/AdSenseSpec$AdType;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/ads/AdSenseSpec$AdType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec$AdType;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec$AdType;
    .locals 1
    .parameter "name"

    .prologue
    .line 472
    const-class v0, Lcom/google/ads/AdSenseSpec$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/AdSenseSpec$AdType;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/AdSenseSpec$AdType;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/google/ads/AdSenseSpec$AdType;->$VALUES:[Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v0}, [Lcom/google/ads/AdSenseSpec$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/AdSenseSpec$AdType;

    return-object v0
.end method
