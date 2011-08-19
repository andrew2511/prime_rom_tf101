.class Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;
.super Ljava/security/cert/CRLException;
.source "ExtCRLException.java"


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;->cause:Ljava/lang/Throwable;

    .line 14
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
