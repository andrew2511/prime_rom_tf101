.class public Lcom/android/vending/model/LocalAssetInfo;
.super Ljava/lang/Object;
.source "LocalAssetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;,
        Lcom/android/vending/model/LocalAssetInfo$AssetState;
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAutoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

.field private final mContentUri:Landroid/net/Uri;

.field private final mDownloadPendingTime:J

.field private final mDownloadTime:J

.field private final mForwardLocked:Z

.field private final mInstallTime:J

.field private final mPackageName:Ljava/lang/String;

.field private final mReferrer:Ljava/lang/String;

.field private final mRefundTimeout:Ljava/lang/Long;

.field private final mServerId:Ljava/lang/String;

.field private final mSignatureAndSize:Ljava/lang/String;

.field private final mSize:J

.field private final mSource:Ljava/lang/String;

.field private final mState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field private final mType:Lcom/android/vending/model/Asset$AssetType;

.field private final mUninstallTime:J

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;JJJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Ljava/lang/String;)V
    .locals 3
    .parameter "serverId"
    .parameter "state"
    .parameter "downloadPendingTime"
    .parameter "downloadTime"
    .parameter "installTime"
    .parameter "uninstallTime"
    .parameter "size"
    .parameter "type"
    .parameter "packageName"
    .parameter "contentUri"
    .parameter "isForwardLocked"
    .parameter "signatureAndSize"
    .parameter "refundTimeout"
    .parameter "versionCode"
    .parameter "referrer"
    .parameter "source"
    .parameter "autoUpdateState"
    .parameter "account"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/vending/model/LocalAssetInfo;->mServerId:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/android/vending/model/LocalAssetInfo;->mState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 115
    iput-wide p7, p0, Lcom/android/vending/model/LocalAssetInfo;->mInstallTime:J

    .line 116
    iput-wide p9, p0, Lcom/android/vending/model/LocalAssetInfo;->mUninstallTime:J

    .line 117
    iput-wide p11, p0, Lcom/android/vending/model/LocalAssetInfo;->mSize:J

    .line 118
    iput-wide p3, p0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadPendingTime:J

    .line 119
    iput-wide p5, p0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadTime:J

    .line 120
    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mSource:Ljava/lang/String;

    .line 121
    move-wide/from16 v0, p13

    long-to-int v0, v0

    move v2, v0

    invoke-static {v2}, Lcom/android/vending/model/Asset$AssetType;->valueOf(I)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/LocalAssetInfo;->mType:Lcom/android/vending/model/Asset$AssetType;

    .line 122
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mPackageName:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mContentUri:Landroid/net/Uri;

    .line 124
    move/from16 v0, p17

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mForwardLocked:Z

    .line 125
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mSignatureAndSize:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mRefundTimeout:Ljava/lang/Long;

    .line 127
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mVersionCode:I

    .line 128
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mReferrer:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mAutoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    .line 130
    move-object/from16 v0, p24

    move-object v1, p0

    iput-object v0, v1, Lcom/android/vending/model/LocalAssetInfo;->mAccount:Ljava/lang/String;

    .line 131
    if-nez p24, :cond_0

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/vending/model/LocalAssetInfo;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v2, Lcom/android/vending/model/LocalAssetInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mServerId:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadPendingTime:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadTime:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mInstallTime:J

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mUninstallTime:J

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mSize:J

    move-wide v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mType:Lcom/android/vending/model/Asset$AssetType;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mContentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mForwardLocked:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mSignatureAndSize:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mRefundTimeout:Ljava/lang/Long;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mVersionCode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mReferrer:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mSource:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mAutoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/LocalAssetInfo;->mAccount:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v2 .. v26}, Lcom/android/vending/model/LocalAssetInfo;-><init>(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;JJJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Ljava/lang/String;)V

    return-object v2
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mAutoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDownloadPendingTime()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadPendingTime:J

    return-wide v0
.end method

.method public getDownloadTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadTime:J

    return-wide v0
.end method

.method public getInstallTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mInstallTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundTimeout()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mRefundTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureAndSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mSignatureAndSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mSize:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    return-object v0
.end method

.method public getType()Lcom/android/vending/model/Asset$AssetType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mType:Lcom/android/vending/model/Asset$AssetType;

    return-object v0
.end method

.method public getUninstallTime()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mUninstallTime:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mVersionCode:I

    return v0
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/vending/model/LocalAssetInfo;->mForwardLocked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalAssetInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mContentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadPendingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadPendingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mDownloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mInstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUninstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mUninstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mType:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSignatureAndSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mSignatureAndSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForwardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mForwardLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefundTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mRefundTimeout:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoUpdateState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mAutoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/LocalAssetInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
