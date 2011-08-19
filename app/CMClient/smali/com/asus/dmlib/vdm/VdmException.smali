.class public Lcom/asus/dmlib/vdm/VdmException;
.super Ljava/lang/Exception;
.source "VdmException.java"


# static fields
.field private static final serialVersionUID:J = -0x5a5d1b09df7ff927L


# instance fields
.field private mErrorCode:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V
    .locals 0
    .parameter "string"
    .parameter "errorCode"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/asus/dmlib/vdm/VdmException;->mErrorCode:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    .line 15
    return-void
.end method


# virtual methods
.method public getError()[C
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorCode()Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/dmlib/vdm/VdmException;->mErrorCode:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    return-object v0
.end method

.method public setErrorCode(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V
    .locals 0
    .parameter "mErrorCode"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/asus/dmlib/vdm/VdmException;->mErrorCode:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    .line 26
    return-void
.end method
