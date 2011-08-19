.class public final enum Lcom/google/ads/AdSenseSpec$AdFormat;
.super Ljava/lang/Enum;
.source "AdSenseSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdSenseSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/AdSenseSpec$AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/AdSenseSpec$AdFormat;

.field public static final enum FORMAT_300x250:Lcom/google/ads/AdSenseSpec$AdFormat;

.field public static final enum FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;


# instance fields
.field private mFormatString:Ljava/lang/String;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 498
    new-instance v0, Lcom/google/ads/AdSenseSpec$AdFormat;

    const-string v1, "FORMAT_320x50"

    const-string v3, "320x50_mb"

    const/16 v4, 0x140

    const/16 v5, 0x32

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdSenseSpec$AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    .line 500
    new-instance v3, Lcom/google/ads/AdSenseSpec$AdFormat;

    const-string v4, "FORMAT_300x250"

    const-string v6, "300x250_as"

    const/16 v7, 0x12c

    const/16 v8, 0xfa

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/ads/AdSenseSpec$AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_300x250:Lcom/google/ads/AdSenseSpec$AdFormat;

    .line 496
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/AdSenseSpec$AdFormat;

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_300x250:Lcom/google/ads/AdSenseSpec$AdFormat;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/ads/AdSenseSpec$AdFormat;->$VALUES:[Lcom/google/ads/AdSenseSpec$AdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "formatString"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 506
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 507
    iput-object p3, p0, Lcom/google/ads/AdSenseSpec$AdFormat;->mFormatString:Ljava/lang/String;

    .line 508
    iput p4, p0, Lcom/google/ads/AdSenseSpec$AdFormat;->mWidth:I

    .line 509
    iput p5, p0, Lcom/google/ads/AdSenseSpec$AdFormat;->mHeight:I

    .line 510
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec$AdFormat;
    .locals 1
    .parameter "name"

    .prologue
    .line 496
    const-class v0, Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/AdSenseSpec$AdFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/AdSenseSpec$AdFormat;
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/google/ads/AdSenseSpec$AdFormat;->$VALUES:[Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-virtual {v0}, [Lcom/google/ads/AdSenseSpec$AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/AdSenseSpec$AdFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec$AdFormat;->mFormatString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/google/ads/AdSenseSpec$AdFormat;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/google/ads/AdSenseSpec$AdFormat;->mWidth:I

    return v0
.end method
