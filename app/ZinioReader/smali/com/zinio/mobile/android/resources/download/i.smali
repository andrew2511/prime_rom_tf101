.class final Lcom/zinio/mobile/android/resources/download/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/zinio/mobile/android/resources/download/e;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/resources/download/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 123
    new-array v0, p1, [Lcom/zinio/mobile/android/resources/download/e;

    return-object v0
.end method
