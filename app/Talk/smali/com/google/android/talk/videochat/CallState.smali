.class public Lcom/google/android/talk/videochat/CallState;
.super Ljava/lang/Object;
.source "CallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/talk/videochat/CallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bluetoothState:I

.field public libjingleCallState:I

.field public mute:Z

.field public remoteBareJid:Ljava/lang/String;

.field public remoteFullJid:Ljava/lang/String;

.field public secure:Z

.field public video:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/talk/videochat/CallState$1;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CallState$1;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/CallState;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZIZ)V
    .locals 2
    .parameter "remoteJid"
    .parameter "libjingleCallState"
    .parameter "video"
    .parameter "mute"
    .parameter "bluetoothState"
    .parameter "secure"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    .line 71
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, bareJid:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 75
    :cond_0
    iput-object v0, p0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    .line 77
    iput-boolean p3, p0, Lcom/google/android/talk/videochat/CallState;->video:Z

    .line 78
    iput-boolean p4, p0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    .line 79
    iput p5, p0, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    .line 80
    iput-boolean p6, p0, Lcom/google/android/talk/videochat/CallState;->secure:Z

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/talk/videochat/CallState;
    .locals 7

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/talk/videochat/CallState;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    :goto_0
    iget v2, p0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    iget-boolean v3, p0, Lcom/google/android/talk/videochat/CallState;->video:Z

    iget-boolean v4, p0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    iget v5, p0, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    iget-boolean v6, p0, Lcom/google/android/talk/videochat/CallState;->secure:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/CallState;-><init>(Ljava/lang/String;IZZIZ)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallState;->clone()Lcom/google/android/talk/videochat/CallState;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallState;->video:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallState;->secure:Z

    .line 129
    return-void

    :cond_1
    move v0, v2

    .line 125
    goto :goto_0

    :cond_2
    move v0, v2

    .line 126
    goto :goto_1

    :cond_3
    move v0, v2

    .line 128
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    :goto_0
    iget v0, p0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallState;->video:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallState;->secure:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_1

    :cond_2
    move v0, v1

    .line 114
    goto :goto_2

    :cond_3
    move v0, v1

    .line 116
    goto :goto_3
.end method
