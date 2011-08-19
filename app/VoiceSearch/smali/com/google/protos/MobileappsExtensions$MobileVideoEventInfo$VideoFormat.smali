.class public final enum Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat; = null

.field public static final enum FLV_320:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat; = null

.field public static final FLV_320_VALUE:I = 0x3

.field public static final enum MP4_200:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat; = null

.field public static final MP4_200_VALUE:I = 0x2

.field public static final enum MP4_256:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat; = null

.field public static final MP4_256_VALUE:I = 0x5

.field public static final enum MP4_600:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat; = null

.field public static final MP4_600_VALUE:I = 0x4

.field public static final enum MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat; = null

.field public static final MP4_80_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 802
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    const-string v1, "MP4_80"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 803
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    const-string v1, "MP4_200"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_200:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 804
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    const-string v1, "FLV_320"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->FLV_320:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 805
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    const-string v1, "MP4_600"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_600:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 806
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    const-string v1, "MP4_256"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_256:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 800
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_200:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->FLV_320:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_600:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_256:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 834
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 844
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->value:I

    .line 845
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
    .locals 1
    .parameter

    .prologue
    .line 819
    packed-switch p0, :pswitch_data_0

    .line 825
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 820
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    goto :goto_0

    .line 821
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_200:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    goto :goto_0

    .line 822
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->FLV_320:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    goto :goto_0

    .line 823
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_600:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    goto :goto_0

    .line 824
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_256:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
    .locals 1
    .parameter

    .prologue
    .line 800
    const-class v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
    .locals 1

    .prologue
    .line 800
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->$VALUES:[Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->value:I

    return v0
.end method
