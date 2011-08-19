.class public Lcom/google/android/googleapps/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googleapps/LoginData$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/googleapps/LoginData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAuthtoken:Ljava/lang/String;

.field public mCaptchaAnswer:Ljava/lang/String;

.field public mCaptchaData:[B

.field public mCaptchaMimeType:Ljava/lang/String;

.field public mCaptchaToken:Ljava/lang/String;

.field public mEncryptedPassword:Ljava/lang/String;

.field public mFlags:I

.field public mJsonString:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mService:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mStatus:Lcom/google/android/googleapps/LoginData$Status;

.field public mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/googleapps/LoginData$1;

    invoke-direct {v0}, Lcom/google/android/googleapps/LoginData$1;-><init>()V

    sput-object v0, Lcom/google/android/googleapps/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    .line 50
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googleapps/LoginData;->mFlags:I

    .line 53
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 54
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    .line 50
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googleapps/LoginData;->mFlags:I

    .line 53
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 54
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/googleapps/LoginData;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/googleapps/LoginData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/googleapps/LoginData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googleapps/LoginData;)V
    .locals 2
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    .line 50
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googleapps/LoginData;->mFlags:I

    .line 53
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 54
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    .line 67
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/google/android/googleapps/LoginData;->mFlags:I

    iput v0, p0, Lcom/google/android/googleapps/LoginData;->mFlags:I

    .line 70
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 71
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "         status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "\n       username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "\n       password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "\n   enc password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "\n        service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "\n      authtoken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\n   captchatoken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "\n  captchaanswer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "\n    captchadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, len:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 137
    iput-object v3, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    .line 142
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/googleapps/LoginData;->mFlags:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, status:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 147
    iput-object v3, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 151
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 154
    return-void

    .line 139
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    .line 140
    iget-object v2, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 149
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/google/android/googleapps/LoginData$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/googleapps/LoginData$Status;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    if-nez v0, :cond_0

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/google/android/googleapps/LoginData;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mJsonString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mCaptchaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    invoke-virtual {v0}, Lcom/google/android/googleapps/LoginData$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
