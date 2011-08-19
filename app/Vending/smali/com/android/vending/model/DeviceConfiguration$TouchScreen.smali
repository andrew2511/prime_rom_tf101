.class public final enum Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/DeviceConfiguration$TouchScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

.field public static final enum FINGER:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

.field public static final enum NOTOUCH:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

.field public static final enum STYLUS:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

.field public static final enum UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    .line 24
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    const-string v1, "NOTOUCH"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->NOTOUCH:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    .line 25
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    const-string v1, "STYLUS"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->STYLUS:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    .line 26
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    const-string v1, "FINGER"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->FINGER:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->NOTOUCH:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->STYLUS:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->FINGER:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->mId:I

    .line 32
    return-void
.end method

.method public static fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 61
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->NOTOUCH:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->STYLUS:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->FINGER:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_0

    .line 48
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->NOTOUCH:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0

    .line 43
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->STYLUS:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->FINGER:Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/DeviceConfiguration$TouchScreen;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    invoke-virtual {v0}, [Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->mId:I

    return v0
.end method
