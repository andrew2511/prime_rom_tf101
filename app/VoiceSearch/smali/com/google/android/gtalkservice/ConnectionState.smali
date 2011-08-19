.class public final Lcom/google/android/gtalkservice/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONNECTING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/ConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDLE:I = 0x0

.field public static final LOGGED_IN:I = 0x3

.field public static final ONLINE:I = 0x4

.field public static final PENDING:I = 0x1


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionState$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/ConnectionState;->setState(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    .line 55
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 97
    packed-switch p0, :pswitch_data_0

    .line 111
    const-string v0, "IDLE"

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "RECONNECTION_SCHEDULED"

    goto :goto_0

    .line 102
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v0, "AUTHENTICATED"

    goto :goto_0

    .line 108
    :pswitch_3
    const-string v0, "ONLINE"

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggingIn()Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingReconnect()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    .line 63
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method
