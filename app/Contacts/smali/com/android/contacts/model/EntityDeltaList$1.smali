.class final Lcom/android/contacts/model/EntityDeltaList$1;
.super Ljava/lang/Object;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/EntityDeltaList;
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
        "Lcom/android/contacts/model/EntityDeltaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 2
    .parameter "in"

    .prologue
    .line 386
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;-><init>(Lcom/android/contacts/model/EntityDeltaList$1;)V

    .line 387
    .local v0, state:Lcom/android/contacts/model/EntityDeltaList;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDeltaList;->readFromParcel(Landroid/os/Parcel;)V

    .line 388
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/EntityDeltaList;
    .locals 1
    .parameter "size"

    .prologue
    .line 392
    new-array v0, p1, [Lcom/android/contacts/model/EntityDeltaList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList$1;->newArray(I)[Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    return-object v0
.end method
