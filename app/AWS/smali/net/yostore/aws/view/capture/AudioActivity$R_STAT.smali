.class final enum Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;
.super Ljava/lang/Enum;
.source "AudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/AudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "R_STAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

.field public static final enum PLAYING:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

.field public static final enum READY:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

.field public static final enum RECORDED:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

.field public static final enum RECORDING:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->READY:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    .line 57
    new-instance v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    const-string v1, "RECORDED"

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->RECORDED:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    .line 58
    new-instance v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->PLAYING:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    .line 59
    new-instance v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->RECORDING:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    sget-object v1, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->READY:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    aput-object v1, v0, v2

    sget-object v1, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->RECORDED:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    aput-object v1, v0, v3

    sget-object v1, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->PLAYING:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    aput-object v1, v0, v4

    sget-object v1, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->RECORDING:Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    aput-object v1, v0, v5

    sput-object v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->ENUM$VALUES:[Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    return-object p0
.end method

.method public static values()[Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;->ENUM$VALUES:[Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    array-length v1, v0

    new-array v2, v1, [Lnet/yostore/aws/view/capture/AudioActivity$R_STAT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
