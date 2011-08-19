.class public Lcom/android/emailcommon/service/PolicySet;
.super Ljava/lang/Object;
.source "PolicySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/PolicySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mMaxPasswordFails:I

.field public final mMaxScreenLockTime:I

.field public final mMinPasswordLength:I

.field public final mPasswordComplexChars:I

.field public final mPasswordExpirationDays:I

.field public final mPasswordHistory:I

.field public final mPasswordMode:I

.field public final mRequireEncryption:Z

.field public final mRequireEncryptionExternal:Z

.field public final mRequireRemoteWipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/android/emailcommon/service/PolicySet$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/PolicySet$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZIIIZ)V
    .locals 3
    .parameter "minPasswordLength"
    .parameter "passwordMode"
    .parameter "maxPasswordFails"
    .parameter "maxScreenLockTime"
    .parameter "requireRemoteWipe"
    .parameter "passwordExpirationDays"
    .parameter "passwordHistory"
    .parameter "passwordComplexChars"
    .parameter "requireEncryption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x1f

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-nez p2, :cond_1

    .line 135
    const/4 p3, 0x0

    .line 136
    const/4 p4, 0x0

    .line 137
    const/4 p1, 0x0

    .line 138
    const/4 p8, 0x0

    .line 139
    const/4 p7, 0x0

    .line 140
    const/4 p6, 0x0

    .line 173
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 174
    iput p2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 175
    iput p3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 176
    iput p4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 177
    iput-boolean p5, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 178
    iput p6, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 179
    iput p7, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 180
    iput p8, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 181
    iput-boolean p9, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    .line 187
    return-void

    .line 142
    :cond_1
    if-eq p2, v2, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    if-ne p2, v2, :cond_3

    .line 149
    const/4 p8, 0x0

    .line 152
    :cond_3
    const/16 v0, 0x1e

    if-le p1, v0, :cond_4

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_4
    const/16 v0, 0x3ff

    if-le p6, v0, :cond_5

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password expiration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_5
    const/16 v0, 0xff

    if-le p7, v0, :cond_6

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password history"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_6
    if-le p8, v1, :cond_7

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "complex chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_7
    if-le p3, v1, :cond_8

    .line 166
    const/16 p3, 0x1f

    .line 169
    :cond_8
    const/16 v0, 0x7ff

    if-le p4, v0, :cond_0

    .line 170
    const/16 p4, 0x7ff

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 7
    .parameter "flags"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const-wide/16 v0, 0x1f

    and-long/2addr v0, p1

    shr-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 203
    const-wide/16 v0, 0x1e0

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 205
    const-wide/16 v0, 0x3e00

    and-long/2addr v0, p1

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 207
    const-wide/32 v0, 0x1ffc000

    and-long/2addr v0, p1

    const/16 v2, 0xe

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 209
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, p1

    cmp-long v0, v5, v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 210
    const-wide v0, 0xffc000000L

    and-long/2addr v0, p1

    const/16 v2, 0x1a

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 212
    const-wide v0, 0xff000000000L

    and-long/2addr v0, p1

    const/16 v2, 0x24

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 214
    const-wide v0, 0x1f00000000000L

    and-long/2addr v0, p1

    const/16 v2, 0x2c

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 216
    const-wide/high16 v0, 0x2

    and-long/2addr v0, p1

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 217
    const-wide/high16 v0, 0x4

    and-long/2addr v0, p1

    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    .line 218
    return-void

    :cond_0
    move v0, v3

    .line 209
    goto :goto_0

    :cond_1
    move v0, v3

    .line 216
    goto :goto_1

    :cond_2
    move v0, v3

    .line 217
    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    .line 343
    return-void

    :cond_0
    move v0, v2

    .line 337
    goto :goto_0

    :cond_1
    move v0, v2

    .line 341
    goto :goto_1

    :cond_2
    move v0, v2

    .line 342
    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 194
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/service/PolicySet;-><init>(J)V

    .line 195
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 285
    instance-of v2, p1, Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_1

    .line 286
    move-object v0, p1

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    move-object v1, v0

    .line 287
    .local v1, other:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 289
    .end local v1           #other:Lcom/android/emailcommon/service/PolicySet;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/emailcommon/service/PolicySet;
    :cond_0
    move v2, v6

    .line 287
    goto :goto_0

    .end local v1           #other:Lcom/android/emailcommon/service/PolicySet;
    :cond_1
    move v2, v6

    .line 289
    goto :goto_0
.end method

.method public getMaxPasswordFailsForTest()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    return v0
.end method

.method public getMaxScreenLockTimeForTest()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    return v0
.end method

.method public getMinPasswordLengthForTest()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    return v0
.end method

.method public getPasswordModeForTest()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    return v0
.end method

.method public getSecurityCode()J
    .locals 5

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    .line 353
    .local v0, flags:J
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long v0, v2, v4

    .line 354
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 355
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    int-to-long v2, v2

    const/16 v4, 0x9

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 356
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    int-to-long v2, v2

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 357
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    .line 358
    :cond_0
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    int-to-long v2, v2

    const/16 v4, 0x24

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 359
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const/16 v4, 0x1a

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 360
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    int-to-long v2, v2

    const/16 v4, 0x2c

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 361
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x2

    or-long/2addr v0, v2

    .line 362
    :cond_1
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    if-eqz v2, :cond_2

    const-wide/high16 v2, 0x4

    or-long/2addr v0, v2

    .line 363
    :cond_2
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v0

    .line 348
    .local v0, code:J
    long-to-int v2, v0

    return v2
.end method

.method public isRequireEncryptionExternalForTest()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    return v0
.end method

.method public isRequireEncryptionForTest()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    return v0
.end method

.method public isRequireRemoteWipeForTest()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pw-len-min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-fails-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenlock-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remote-wipe-req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-complex-chars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " require-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " require-encryptionExternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 7
    .parameter "account"
    .parameter "syncKey"
    .parameter "update"
    .parameter "context"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v2

    .line 267
    .local v2, newFlags:J
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 268
    .local v1, dirty:Z
    :goto_0
    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 269
    iput-object p2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 270
    if-eqz p3, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "securityFlags"

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v4, "securitySyncKey"

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, p4, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 280
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return v1

    .line 267
    .end local v1           #dirty:Z
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 277
    .restart local v1       #dirty:Z
    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 317
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    return-void

    :cond_0
    move v0, v1

    .line 321
    goto :goto_0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_1

    :cond_2
    move v0, v1

    .line 326
    goto :goto_2
.end method
