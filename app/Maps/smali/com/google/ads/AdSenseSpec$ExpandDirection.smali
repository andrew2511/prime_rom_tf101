.class public final enum Lcom/google/ads/AdSenseSpec$ExpandDirection;
.super Ljava/lang/Enum;
.source "AdSenseSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdSenseSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpandDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/AdSenseSpec$ExpandDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/AdSenseSpec$ExpandDirection;

.field public static final enum BOTTOM:Lcom/google/ads/AdSenseSpec$ExpandDirection;

.field public static final enum TOP:Lcom/google/ads/AdSenseSpec$ExpandDirection;


# instance fields
.field private mFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    new-instance v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;

    const-string v1, "TOP"

    const-string v2, "t"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/AdSenseSpec$ExpandDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;->TOP:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    .line 530
    new-instance v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;

    const-string v1, "BOTTOM"

    const-string v2, "b"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/AdSenseSpec$ExpandDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;->BOTTOM:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    .line 528
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/AdSenseSpec$ExpandDirection;

    sget-object v1, Lcom/google/ads/AdSenseSpec$ExpandDirection;->TOP:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/AdSenseSpec$ExpandDirection;->BOTTOM:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;->$VALUES:[Lcom/google/ads/AdSenseSpec$ExpandDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "directionString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 535
    iput-object p3, p0, Lcom/google/ads/AdSenseSpec$ExpandDirection;->mFormatString:Ljava/lang/String;

    .line 536
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec$ExpandDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 528
    const-class v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/AdSenseSpec$ExpandDirection;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/AdSenseSpec$ExpandDirection;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/google/ads/AdSenseSpec$ExpandDirection;->$VALUES:[Lcom/google/ads/AdSenseSpec$ExpandDirection;

    invoke-virtual {v0}, [Lcom/google/ads/AdSenseSpec$ExpandDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/AdSenseSpec$ExpandDirection;

    return-object v0
.end method


# virtual methods
.method getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec$ExpandDirection;->mFormatString:Ljava/lang/String;

    return-object v0
.end method
