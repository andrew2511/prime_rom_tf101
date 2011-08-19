.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:I

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:I

.field public mUri:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V
    .locals 4
    .parameter "id"
    .parameter "uri"
    .parameter "hint"
    .parameter "filename"
    .parameter "mimetype"
    .parameter "direction"
    .parameter "destination"
    .parameter "visibility"
    .parameter "confirm"
    .parameter "status"
    .parameter "totalBytes"
    .parameter "currentBytes"
    .parameter "timestamp"
    .parameter "mediaScanned"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 73
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 77
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 78
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 79
    iput p8, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 80
    iput p9, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 81
    iput p10, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 82
    iput p11, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:I

    .line 83
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:I

    .line 84
    move/from16 v0, p13

    int-to-long v0, v0

    move-wide v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 85
    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 86
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public isObsolete()Z
    .locals 2

    .prologue
    .line 120
    const/16 v0, 0xc0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToStart()Z
    .locals 3

    .prologue
    const/16 v2, 0xbe

    const/4 v1, 0x1

    .line 93
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v0, :cond_0

    .line 94
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    .line 103
    :goto_0
    return v0

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v0, v1, :cond_1

    .line 98
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
