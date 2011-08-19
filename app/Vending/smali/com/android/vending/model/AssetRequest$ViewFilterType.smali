.class public final enum Lcom/android/vending/model/AssetRequest$ViewFilterType;
.super Ljava/lang/Enum;
.source "AssetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/AssetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/AssetRequest$ViewFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/AssetRequest$ViewFilterType;

.field public static final enum ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

.field public static final enum FREE:Lcom/android/vending/model/AssetRequest$ViewFilterType;

.field public static final enum PAID:Lcom/android/vending/model/AssetRequest$ViewFilterType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/AssetRequest$ViewFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    .line 61
    new-instance v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->FREE:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    .line 62
    new-instance v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v1, "PAID"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/AssetRequest$ViewFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->PAID:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/model/AssetRequest$ViewFilterType;

    sget-object v1, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/AssetRequest$ViewFilterType;->FREE:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/AssetRequest$ViewFilterType;->PAID:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->$VALUES:[Lcom/android/vending/model/AssetRequest$ViewFilterType;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->value:I

    .line 84
    return-void
.end method

.method public static valueOf(I)Lcom/android/vending/model/AssetRequest$ViewFilterType;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 77
    sget-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->FREE:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->PAID:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/AssetRequest$ViewFilterType;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/AssetRequest$ViewFilterType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/AssetRequest$ViewFilterType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->$VALUES:[Lcom/android/vending/model/AssetRequest$ViewFilterType;

    invoke-virtual {v0}, [Lcom/android/vending/model/AssetRequest$ViewFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/AssetRequest$ViewFilterType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/vending/model/AssetRequest$ViewFilterType;->value:I

    return v0
.end method
