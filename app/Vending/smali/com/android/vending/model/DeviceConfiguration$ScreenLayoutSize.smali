.class public final enum Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenLayoutSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

.field public static final enum EXTRA_LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

.field public static final enum LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

.field public static final enum NORMAL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

.field public static final enum SMALL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

.field public static final enum UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;


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

    .line 170
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    .line 171
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->SMALL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    .line 172
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->NORMAL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    .line 173
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    .line 174
    new-instance v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    const-string v1, "EXTRA_LARGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->EXTRA_LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    .line 169
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->SMALL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->NORMAL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->EXTRA_LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

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
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput p3, p0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->mId:I

    .line 180
    return-void
.end method

.method public static fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;
    .locals 2
    .parameter "value"

    .prologue
    .line 202
    and-int/lit8 v0, p0, 0xf

    .line 204
    .local v0, sizeBits:I
    packed-switch v0, :pswitch_data_0

    .line 215
    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    :goto_0
    return-object v1

    .line 206
    :pswitch_0
    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->SMALL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 208
    :pswitch_1
    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->NORMAL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 212
    :pswitch_3
    sget-object v1, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->EXTRA_LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_0

    .line 198
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->UNDEFINED:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->SMALL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 191
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->NORMAL:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 193
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 195
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->EXTRA_LARGE:Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;
    .locals 1
    .parameter

    .prologue
    .line 169
    const-class v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->$VALUES:[Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    invoke-virtual {v0}, [Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->mId:I

    return v0
.end method
