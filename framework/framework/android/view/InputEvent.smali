.class public abstract Landroid/view/InputEvent;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PARCEL_TOKEN_KEY_EVENT:I = 0x2

.field protected static final PARCEL_TOKEN_MOTION_EVENT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Landroid/view/InputEvent$1;

    invoke-direct {v0}, Landroid/view/InputEvent$1;-><init>()V

    sput-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public final getDevice()Landroid/view/InputDevice;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeviceId()I
.end method

.method public abstract getSource()I
.end method

.method public abstract setSource(I)V
.end method
