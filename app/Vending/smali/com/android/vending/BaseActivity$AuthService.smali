.class public final enum Lcom/android/vending/BaseActivity$AuthService;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/BaseActivity$AuthService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum ANDROID:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;


# instance fields
.field private final authCode:I

.field private final invalidateCode:I

.field private final requiredFeatureSets:[[Ljava/lang/String;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/android/vending/BaseActivity$AuthService;

    const-string v1, "CHECKOUT"

    const-string v3, "sierra"

    const/16 v4, 0x1b6

    const/16 v5, 0x1b7

    const-string v6, "google"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    .line 91
    new-instance v3, Lcom/android/vending/BaseActivity$AuthService;

    const-string v4, "CHECKOUT_QA"

    const-string v6, "sierraqa"

    const/16 v7, 0x1b8

    const/16 v8, 0x1b9

    const-string v9, "google"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    .line 93
    new-instance v3, Lcom/android/vending/BaseActivity$AuthService;

    const-string v4, "CHECKOUT_SANDBOX"

    const-string v6, "sierrasandbox"

    const/16 v7, 0x1c0

    const/16 v8, 0x1c1

    const-string v9, "google"

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    .line 95
    new-instance v3, Lcom/android/vending/BaseActivity$AuthService;

    const-string v4, "ANDROID"

    const-string v6, "android"

    const/16 v7, 0x1ba

    const/16 v8, 0x1bb

    const-string v9, "hosted_or_google"

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    .line 97
    new-instance v3, Lcom/android/vending/BaseActivity$AuthService;

    const-string v4, "ANDROID_SECURE"

    const-string v6, "androidsecure"

    const/16 v7, 0x1bc

    const/16 v8, 0x1bd

    const-string v9, "hosted_or_google"

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/BaseActivity$AuthService;

    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->$VALUES:[Lcom/android/vending/BaseActivity$AuthService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter "serviceName"
    .parameter "authCode"
    .parameter "invalidateCode"
    .parameter "requiredFeature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Lcom/android/vending/BaseActivity$AuthService;->serviceName:Ljava/lang/String;

    .line 147
    iput p4, p0, Lcom/android/vending/BaseActivity$AuthService;->authCode:I

    .line 148
    iput p5, p0, Lcom/android/vending/BaseActivity$AuthService;->invalidateCode:I

    .line 149
    new-array v0, v1, [[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p6, v1, v2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->requiredFeatureSets:[[Ljava/lang/String;

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/BaseActivity$AuthService;
    .locals 1
    .parameter

    .prologue
    .line 88
    const-class v0, Lcom/android/vending/BaseActivity$AuthService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/BaseActivity$AuthService;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/BaseActivity$AuthService;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->$VALUES:[Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v0}, [Lcom/android/vending/BaseActivity$AuthService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/BaseActivity$AuthService;

    return-object v0
.end method


# virtual methods
.method public getAuthCode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/vending/BaseActivity$AuthService;->authCode:I

    return v0
.end method

.method public getInvalidateCode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/vending/BaseActivity$AuthService;->invalidateCode:I

    return v0
.end method

.method public getRequiredFeatureSets()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->requiredFeatureSets:[[Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckout()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
