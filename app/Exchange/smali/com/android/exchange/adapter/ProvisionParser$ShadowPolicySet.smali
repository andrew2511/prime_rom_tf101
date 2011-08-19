.class Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
.super Ljava/lang/Object;
.source "ProvisionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ProvisionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShadowPolicySet"
.end annotation


# instance fields
.field mMaxPasswordFails:I

.field mMaxScreenLockTime:I

.field mMinPasswordLength:I

.field mPasswordComplexChars:I

.field mPasswordExpiration:I

.field mPasswordHistory:I

.field mPasswordMode:I

.field final synthetic this$0:Lcom/android/exchange/adapter/ProvisionParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/ProvisionParser;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 247
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->this$0:Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    .line 249
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    .line 250
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    .line 251
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    .line 252
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpiration:I

    .line 253
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    .line 254
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordComplexChars:I

    return-void
.end method
