.class public Lcom/google/android/gsf/GoogleLoginServiceNotFoundException;
.super Landroid/util/AndroidException;
.source "GoogleLoginServiceNotFoundException.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Lcom/google/android/gsf/GoogleLoginServiceNotFoundException;->mErrorCode:I

    .line 33
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/gsf/GoogleLoginServiceNotFoundException;->mErrorCode:I

    return v0
.end method
