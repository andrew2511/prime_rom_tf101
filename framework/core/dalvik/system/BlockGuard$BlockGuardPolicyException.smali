.class public Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.super Ljava/lang/RuntimeException;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockGuardPolicyException"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mPolicyState:I

.field private final mPolicyViolated:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "policyState"
    .parameter "policyViolated"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .parameter "policyState"
    .parameter "policyViolated"
    .parameter "message"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 89
    iput p1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    .line 90
    iput p2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    .line 91
    iput-object p3, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 93
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " violation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    if-nez v1, :cond_2c

    const-string v1, ""

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public getPolicy()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    return v0
.end method

.method public getPolicyViolation()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    return v0
.end method
