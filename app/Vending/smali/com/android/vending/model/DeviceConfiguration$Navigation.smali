.class public final enum Lcom/android/vending/model/DeviceConfiguration$Navigation;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/DeviceConfiguration$Navigation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/DeviceConfiguration$Navigation;

.field public static final enum DPAD:Lcom/android/vending/model/DeviceConfiguration$Navigation;

.field public static final enum NONAV:Lcom/android/vending/model/DeviceConfiguration$Navigation;

.field public static final enum TRACKBALL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

.field public static final enum UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Navigation;

.field public static final enum WHEEL:Lcom/android/vending/model/DeviceConfiguration$Navigation;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/DeviceConfiguration$Navigation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    .line 120
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    const-string v1, "NONAV"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/DeviceConfiguration$Navigation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->NONAV:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    .line 121
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    const-string v1, "DPAD"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/DeviceConfiguration$Navigation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->DPAD:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    .line 122
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    const-string v1, "TRACKBALL"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/DeviceConfiguration$Navigation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->TRACKBALL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    .line 123
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    const-string v1, "WHEEL"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/vending/model/DeviceConfiguration$Navigation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->WHEEL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/model/DeviceConfiguration$Navigation;

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Navigation;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Navigation;->NONAV:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Navigation;->DPAD:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Navigation;->TRACKBALL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$Navigation;->WHEEL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$Navigation;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->mId:I

    .line 129
    return-void
.end method

.method public static fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$Navigation;
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 162
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->NONAV:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 155
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->DPAD:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 157
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->TRACKBALL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 159
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->WHEEL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/vending/model/DeviceConfiguration$Navigation;
    .locals 1
    .parameter "value"

    .prologue
    .line 136
    packed-switch p0, :pswitch_data_0

    .line 147
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->NONAV:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 140
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->DPAD:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 142
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->TRACKBALL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 144
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->WHEEL:Lcom/android/vending/model/DeviceConfiguration$Navigation;

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration$Navigation;
    .locals 1
    .parameter

    .prologue
    .line 118
    const-class v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/DeviceConfiguration$Navigation;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/DeviceConfiguration$Navigation;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$Navigation;

    invoke-virtual {v0}, [Lcom/android/vending/model/DeviceConfiguration$Navigation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/DeviceConfiguration$Navigation;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/vending/model/DeviceConfiguration$Navigation;->mId:I

    return v0
.end method
