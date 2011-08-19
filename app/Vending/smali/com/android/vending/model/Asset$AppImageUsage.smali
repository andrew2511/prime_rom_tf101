.class public final enum Lcom/android/vending/model/Asset$AppImageUsage;
.super Ljava/lang/Enum;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppImageUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/Asset$AppImageUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/Asset$AppImageUsage;

.field public static final enum BILLING_ICON:Lcom/android/vending/model/Asset$AppImageUsage;

.field public static final enum ICON:Lcom/android/vending/model/Asset$AppImageUsage;

.field public static final enum PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

.field public static final enum SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

.field public static final enum SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/vending/model/Asset$AppImageUsage;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/Asset$AppImageUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 84
    new-instance v0, Lcom/android/vending/model/Asset$AppImageUsage;

    const-string v1, "SCREENSHOT"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/Asset$AppImageUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 85
    new-instance v0, Lcom/android/vending/model/Asset$AppImageUsage;

    const-string v1, "SCREENSHOT_THUMBNAIL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/Asset$AppImageUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 86
    new-instance v0, Lcom/android/vending/model/Asset$AppImageUsage;

    const-string v1, "PROMO_BADGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/Asset$AppImageUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 87
    new-instance v0, Lcom/android/vending/model/Asset$AppImageUsage;

    const-string v1, "BILLING_ICON"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/vending/model/Asset$AppImageUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->BILLING_ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/model/Asset$AppImageUsage;

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->BILLING_ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->$VALUES:[Lcom/android/vending/model/Asset$AppImageUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput p3, p0, Lcom/android/vending/model/Asset$AppImageUsage;->mValue:I

    .line 114
    return-void
.end method

.method public static valueOf(I)Lcom/android/vending/model/Asset$AppImageUsage;
    .locals 2
    .parameter "value"

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized app usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 104
    :goto_0
    return-object v0

    .line 98
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    goto :goto_0

    .line 100
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    goto :goto_0

    .line 102
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    goto :goto_0

    .line 104
    :pswitch_4
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->BILLING_ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/Asset$AppImageUsage;
    .locals 1
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/Asset$AppImageUsage;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/Asset$AppImageUsage;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->$VALUES:[Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0}, [Lcom/android/vending/model/Asset$AppImageUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/Asset$AppImageUsage;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/vending/model/Asset$AppImageUsage;->mValue:I

    return v0
.end method
