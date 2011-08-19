.class public final enum Lcom/android/vending/model/RefundResponse$Result;
.super Ljava/lang/Enum;
.source "RefundResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/RefundResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/RefundResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/RefundResponse$Result;

.field public static final enum BAD_REQUEST:Lcom/android/vending/model/RefundResponse$Result;

.field public static final enum CANNOT_REFUND:Lcom/android/vending/model/RefundResponse$Result;

.field public static final enum OK:Lcom/android/vending/model/RefundResponse$Result;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/android/vending/model/RefundResponse$Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/RefundResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/RefundResponse$Result;->OK:Lcom/android/vending/model/RefundResponse$Result;

    .line 20
    new-instance v0, Lcom/android/vending/model/RefundResponse$Result;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/RefundResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/RefundResponse$Result;->BAD_REQUEST:Lcom/android/vending/model/RefundResponse$Result;

    .line 22
    new-instance v0, Lcom/android/vending/model/RefundResponse$Result;

    const-string v1, "CANNOT_REFUND"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/RefundResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/RefundResponse$Result;->CANNOT_REFUND:Lcom/android/vending/model/RefundResponse$Result;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/model/RefundResponse$Result;

    sget-object v1, Lcom/android/vending/model/RefundResponse$Result;->OK:Lcom/android/vending/model/RefundResponse$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/RefundResponse$Result;->BAD_REQUEST:Lcom/android/vending/model/RefundResponse$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/RefundResponse$Result;->CANNOT_REFUND:Lcom/android/vending/model/RefundResponse$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/model/RefundResponse$Result;->$VALUES:[Lcom/android/vending/model/RefundResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/android/vending/model/RefundResponse$Result;->mValue:I

    .line 43
    return-void
.end method

.method public static valueOf(I)Lcom/android/vending/model/RefundResponse$Result;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 33
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/RefundResponse$Result;->OK:Lcom/android/vending/model/RefundResponse$Result;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/RefundResponse$Result;->BAD_REQUEST:Lcom/android/vending/model/RefundResponse$Result;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/RefundResponse$Result;->CANNOT_REFUND:Lcom/android/vending/model/RefundResponse$Result;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/RefundResponse$Result;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/android/vending/model/RefundResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/RefundResponse$Result;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/RefundResponse$Result;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/vending/model/RefundResponse$Result;->$VALUES:[Lcom/android/vending/model/RefundResponse$Result;

    invoke-virtual {v0}, [Lcom/android/vending/model/RefundResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/RefundResponse$Result;

    return-object v0
.end method
