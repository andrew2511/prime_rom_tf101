.class final Lcom/android/vending/model/Country$1;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/vending/model/Country;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/vending/model/Country;
    .locals 2
    .parameter "in"

    .prologue
    .line 61
    new-instance v0, Lcom/android/vending/model/Country;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/vending/model/Country;-><init>(Landroid/os/Parcel;Lcom/android/vending/model/Country$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/vending/model/Country$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/vending/model/Country;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/vending/model/Country;
    .locals 1
    .parameter "size"

    .prologue
    .line 65
    new-array v0, p1, [Lcom/android/vending/model/Country;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/vending/model/Country$1;->newArray(I)[Lcom/android/vending/model/Country;

    move-result-object v0

    return-object v0
.end method
