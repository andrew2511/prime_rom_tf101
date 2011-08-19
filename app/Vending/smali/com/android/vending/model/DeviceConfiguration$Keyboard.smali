.class public final enum Lcom/android/vending/model/DeviceConfiguration$Keyboard;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyboard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/DeviceConfiguration$Keyboard;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/DeviceConfiguration$Keyboard;

.field public static final enum NOKEYS:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

.field public static final enum QWERTY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

.field public static final enum TWELVE_KEY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

.field public static final enum UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;


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

    .line 69
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    .line 70
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    const-string v1, "NOKEYS"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->NOKEYS:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    .line 71
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    const-string v1, "QWERTY"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->QWERTY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    .line 72
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    const-string v1, "TWELVE_KEY"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->TWELVE_KEY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->NOKEYS:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->QWERTY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->TWELVE_KEY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$Keyboard;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->mId:I

    .line 78
    return-void
.end method

.method public static fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$Keyboard;
    .locals 1
    .parameter "value"

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 111
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 104
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->NOKEYS:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 106
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->QWERTY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 108
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->TWELVE_KEY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/vending/model/DeviceConfiguration$Keyboard;
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 96
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->NOKEYS:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 91
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->QWERTY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 93
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->TWELVE_KEY:Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration$Keyboard;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/DeviceConfiguration$Keyboard;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    invoke-virtual {v0}, [Lcom/android/vending/model/DeviceConfiguration$Keyboard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->mId:I

    return v0
.end method
