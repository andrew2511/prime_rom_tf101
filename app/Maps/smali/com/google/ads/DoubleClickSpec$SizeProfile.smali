.class public final enum Lcom/google/ads/DoubleClickSpec$SizeProfile;
.super Ljava/lang/Enum;
.source "DoubleClickSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/DoubleClickSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/DoubleClickSpec$SizeProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/DoubleClickSpec$SizeProfile;

.field public static final enum L:Lcom/google/ads/DoubleClickSpec$SizeProfile;

.field public static final enum M:Lcom/google/ads/DoubleClickSpec$SizeProfile;

.field public static final enum S:Lcom/google/ads/DoubleClickSpec$SizeProfile;

.field public static final enum T:Lcom/google/ads/DoubleClickSpec$SizeProfile;

.field public static final enum XL:Lcom/google/ads/DoubleClickSpec$SizeProfile;


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    new-instance v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    const-string v1, "T"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->T:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 168
    new-instance v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    const-string v1, "S"

    const/16 v2, 0x78

    const/16 v3, 0x14

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->S:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 170
    new-instance v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    const-string v1, "M"

    const/16 v2, 0xa8

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->M:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 172
    new-instance v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    const-string v1, "L"

    const/16 v2, 0xd8

    const/16 v3, 0x24

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->L:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 174
    new-instance v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    const-string v1, "XL"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->XL:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 164
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/ads/DoubleClickSpec$SizeProfile;

    sget-object v1, Lcom/google/ads/DoubleClickSpec$SizeProfile;->T:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/DoubleClickSpec$SizeProfile;->S:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/DoubleClickSpec$SizeProfile;->M:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/DoubleClickSpec$SizeProfile;->L:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/DoubleClickSpec$SizeProfile;->XL:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->$VALUES:[Lcom/google/ads/DoubleClickSpec$SizeProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput p3, p0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->mWidth:I

    .line 181
    iput p4, p0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->mHeight:I

    .line 182
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/DoubleClickSpec$SizeProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 164
    const-class v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/DoubleClickSpec$SizeProfile;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/DoubleClickSpec$SizeProfile;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->$VALUES:[Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, [Lcom/google/ads/DoubleClickSpec$SizeProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/DoubleClickSpec$SizeProfile;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->mWidth:I

    return v0
.end method
