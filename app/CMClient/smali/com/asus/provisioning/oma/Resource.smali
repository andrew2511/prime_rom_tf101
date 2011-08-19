.class public Lcom/asus/provisioning/oma/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/provisioning/oma/Resource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAAccept:Ljava/lang/String;

.field private mAAuthData:Ljava/lang/String;

.field private mAAuthName:Ljava/lang/String;

.field private mAAuthSecret:Ljava/lang/String;

.field private mAAuthType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mStartPage:Z

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/asus/provisioning/oma/Resource$1;

    invoke-direct {v0}, Lcom/asus/provisioning/oma/Resource$1;-><init>()V

    sput-object v0, Lcom/asus/provisioning/oma/Resource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/provisioning/oma/Resource;->mStartPage:Z

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/provisioning/oma/Resource;->mStartPage:Z

    .line 169
    invoke-virtual {p0, p1}, Lcom/asus/provisioning/oma/Resource;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/asus/provisioning/oma/Resource$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/asus/provisioning/oma/Resource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getAAccept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mAAccept:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthData:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthName:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isStartPage()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/asus/provisioning/oma/Resource;->mStartPage:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/asus/provisioning/oma/Resource;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mName:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mUri:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAccept:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthType:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthSecret:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthData:Ljava/lang/String;

    .line 194
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 195
    .local v0, bary:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 196
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/asus/provisioning/oma/Resource;->mStartPage:Z

    .line 197
    return-void
.end method

.method public setAAccept(Ljava/lang/String;)V
    .locals 0
    .parameter "accept"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mAAccept:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setAAuthData(Ljava/lang/String;)V
    .locals 0
    .parameter "authData"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthData:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setAAuthName(Ljava/lang/String;)V
    .locals 0
    .parameter "authName"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAAuthSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "authSecret"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthSecret:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setAAuthType(Ljava/lang/String;)V
    .locals 0
    .parameter "authType"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthType:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStartPage(Z)V
    .locals 0
    .parameter "startPage"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/asus/provisioning/oma/Resource;->mStartPage:Z

    .line 146
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/asus/provisioning/oma/Resource;->mUri:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAccept:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthSecret:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/asus/provisioning/oma/Resource;->mAAuthData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 182
    .local v0, bary:[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/asus/provisioning/oma/Resource;->mStartPage:Z

    aput-boolean v2, v0, v1

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 184
    return-void
.end method
