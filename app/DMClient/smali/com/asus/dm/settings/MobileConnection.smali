.class public Lcom/asus/dm/settings/MobileConnection;
.super Ljava/lang/Object;
.source "MobileConnection.java"


# instance fields
.field private final ID_DEFAULT_VALUE:I

.field private mApn:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mDeleteFlag:Z

.field private mId:I

.field private mMcc:Ljava/lang/String;

.field private mMmsPort:Ljava/lang/String;

.field private mMmsProxy:Ljava/lang/String;

.field private mMmsc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNeedsUpdate:Z

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mProxy:Ljava/lang/String;

.field private mServer:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x929

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/asus/dm/settings/MobileConnection;->ID_DEFAULT_VALUE:I

    .line 52
    iput v0, p0, Lcom/asus/dm/settings/MobileConnection;->mId:I

    .line 67
    iput-boolean v1, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 68
    iput-boolean v1, p0, Lcom/asus/dm/settings/MobileConnection;->mDeleteFlag:Z

    .line 90
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/asus/dm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/dm/settings/MobileConnection;->mId:I

    .line 73
    const-string v0, "name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    .line 74
    const-string v0, "mcc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    .line 75
    const-string v0, "mnc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    .line 76
    const-string v0, "apn"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    .line 77
    const-string v0, "user"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    .line 78
    const-string v0, "server"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    .line 79
    const-string v0, "password"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    .line 80
    const-string v0, "proxy"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    .line 81
    const-string v0, "port"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    .line 82
    const-string v0, "mmsproxy"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    .line 83
    const-string v0, "mmsport"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    .line 84
    const-string v0, "mmsc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    .line 85
    const-string v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    .line 86
    const-string v0, "current"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/dm/settings/MobileConnection;->mCurrent:I

    .line 87
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mDeleteFlag:Z

    .line 132
    return-void
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/asus/dm/settings/MobileConnection;->mCurrent:I

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public save()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/asus/dm/settings/MobileConnection;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, where:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/asus/dm/settings/MobileConnection;->mDeleteFlag:Z

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v2, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    if-eqz v2, :cond_0

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "name"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "mcc"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "mnc"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 106
    const-string v2, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_5
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "apn"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v2, "user"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_7
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "server"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_8
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "password"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_9
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v2, "proxy"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_a
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v2, "port"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_b
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v2, "mmsproxy"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_c
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v2, "mmsport"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_d
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string v2, "mmsc"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_e
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v2, "type"

    iget-object v3, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_f
    const-string v2, "current"

    iget v3, p0, Lcom/asus/dm/settings/MobileConnection;->mCurrent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget v2, p0, Lcom/asus/dm/settings/MobileConnection;->mId:I

    const/16 v3, -0x929

    if-ne v2, v3, :cond_10

    .line 121
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 123
    :cond_10
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 1
    .parameter "apn"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mApn:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 192
    :cond_1
    return-void
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "current"

    .prologue
    .line 312
    iput p1, p0, Lcom/asus/dm/settings/MobileConnection;->mCurrent:I

    .line 313
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 2
    .parameter "mcc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/OperatorNotAllowException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, imcc:I
    if-lez v0, :cond_2

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mMcc:Ljava/lang/String;

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 166
    :cond_1
    return-void

    .line 164
    :cond_2
    new-instance v1, Lcom/asus/dm/exception/OperatorNotAllowException;

    invoke-direct {v1}, Lcom/asus/dm/exception/OperatorNotAllowException;-><init>()V

    throw v1
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/PortOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, iport:I
    if-lez v0, :cond_2

    const/high16 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsPort:Ljava/lang/String;

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 279
    :cond_1
    return-void

    .line 277
    :cond_2
    new-instance v1, Lcom/asus/dm/exception/PortOutOfRangeException;

    invoke-direct {v1}, Lcom/asus/dm/exception/PortOutOfRangeException;-><init>()V

    throw v1
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 1
    .parameter "mmsProxy"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsProxy:Ljava/lang/String;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 263
    :cond_1
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 1
    .parameter "mmsc"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mMmsc:Ljava/lang/String;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 290
    :cond_1
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 2
    .parameter "mnc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/OperatorNotAllowException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, imnc:I
    if-lez v0, :cond_2

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mMnc:Ljava/lang/String;

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 182
    :cond_1
    return-void

    .line 180
    :cond_2
    new-instance v1, Lcom/asus/dm/exception/OperatorNotAllowException;

    invoke-direct {v1}, Lcom/asus/dm/exception/OperatorNotAllowException;-><init>()V

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mName:Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 150
    :cond_1
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mPassword:Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 225
    :cond_1
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 2
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/PortOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, iport:I
    if-lez v0, :cond_2

    const/high16 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mPort:Ljava/lang/String;

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 252
    :cond_1
    return-void

    .line 250
    :cond_2
    new-instance v1, Lcom/asus/dm/exception/PortOutOfRangeException;

    invoke-direct {v1}, Lcom/asus/dm/exception/PortOutOfRangeException;-><init>()V

    throw v1
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mProxy:Ljava/lang/String;

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 236
    :cond_1
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1
    .parameter "server"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mServer:Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 214
    :cond_1
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/UnsupportdTypeException;
        }
    .end annotation

    .prologue
    .line 297
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    :cond_1
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mType:Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 305
    :cond_2
    return-void

    .line 303
    :cond_3
    new-instance v0, Lcom/asus/dm/exception/UnsupportdTypeException;

    invoke-direct {v0}, Lcom/asus/dm/exception/UnsupportdTypeException;-><init>()V

    throw v0
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnection;->mUser:Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dm/settings/MobileConnection;->mNeedsUpdate:Z

    .line 203
    :cond_1
    return-void
.end method
