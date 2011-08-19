.class Lcom/android/server/vpn/VpnConnectingError;
.super Ljava/io/IOException;
.source "VpnConnectingError.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "errorCode"

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    iput p1, p0, Lcom/android/server/vpn/VpnConnectingError;->mErrorCode:I

    .line 30
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/vpn/VpnConnectingError;->mErrorCode:I

    return v0
.end method
