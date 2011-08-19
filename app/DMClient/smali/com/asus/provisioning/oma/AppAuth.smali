.class public Lcom/asus/provisioning/oma/AppAuth;
.super Ljava/lang/Object;
.source "AppAuth.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/provisioning/oma/AppAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAAuthData:Ljava/lang/String;

.field private mAAuthLevel:Ljava/lang/String;

.field private mAAuthName:Ljava/lang/String;

.field private mAAuthSecret:Ljava/lang/String;

.field private mAAuthType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/asus/provisioning/oma/AppAuth$1;

    invoke-direct {v0}, Lcom/asus/provisioning/oma/AppAuth$1;-><init>()V

    sput-object v0, Lcom/asus/provisioning/oma/AppAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/asus/provisioning/oma/AppAuth;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/asus/provisioning/oma/AppAuth$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/asus/provisioning/oma/AppAuth;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAAuthData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthData:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthName:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    return-object v0
.end method

.method public isValidAppAuth()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    const-string v1, "HTTP-BASIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    const-string v1, "HTTP-DIGEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    const-string v1, "BASIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    const-string v1, "DIGEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthLevel:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthSecret:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthData:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setAAuthData(Ljava/lang/String;)V
    .locals 0
    .parameter "authData"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthData:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setAAuthLevel(Ljava/lang/String;)V
    .locals 0
    .parameter "authLevel"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthLevel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setAAuthName(Ljava/lang/String;)V
    .locals 0
    .parameter "authName"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setAAuthSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "authSecret"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthSecret:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setAAuthType(Ljava/lang/String;)V
    .locals 0
    .parameter "authType"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/asus/provisioning/oma/AppAuth;->mAAuthData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return-void
.end method
