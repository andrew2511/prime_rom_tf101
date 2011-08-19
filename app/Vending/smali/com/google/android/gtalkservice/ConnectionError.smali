.class public final Lcom/google/android/gtalkservice/ConnectionError;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/ConnectionError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionError$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    .line 71
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 113
    packed-switch p0, :pswitch_data_0

    .line 142
    :pswitch_0
    const-string v0, "NO ERROR"

    :goto_0
    return-object v0

    .line 115
    :pswitch_1
    const-string v0, "NO NETWORK"

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "CONNECTION FAILED"

    goto :goto_0

    .line 121
    :pswitch_3
    const-string v0, "UNKNOWN HOST"

    goto :goto_0

    .line 124
    :pswitch_4
    const-string v0, "AUTH FAILED"

    goto :goto_0

    .line 127
    :pswitch_5
    const-string v0, "AUTH EXPIRED"

    goto :goto_0

    .line 130
    :pswitch_6
    const-string v0, "HEARTBEAT TIMEOUT"

    goto :goto_0

    .line 133
    :pswitch_7
    const-string v0, "SERVER FAILED"

    goto :goto_0

    .line 136
    :pswitch_8
    const-string v0, "SERVER REJECT - RATE LIMIT"

    goto :goto_0

    .line 139
    :pswitch_9
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
