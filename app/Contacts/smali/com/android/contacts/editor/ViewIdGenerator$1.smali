.class final Lcom/android/contacts/editor/ViewIdGenerator$1;
.super Ljava/lang/Object;
.source "ViewIdGenerator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ViewIdGenerator;
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
        "Lcom/android/contacts/editor/ViewIdGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/editor/ViewIdGenerator;
    .locals 1
    .parameter "in"

    .prologue
    .line 122
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    .line 123
    .local v0, vig:Lcom/android/contacts/editor/ViewIdGenerator;
    invoke-static {v0, p1}, Lcom/android/contacts/editor/ViewIdGenerator;->access$000(Lcom/android/contacts/editor/ViewIdGenerator;Landroid/os/Parcel;)V

    .line 124
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ViewIdGenerator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/editor/ViewIdGenerator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/editor/ViewIdGenerator;
    .locals 1
    .parameter "size"

    .prologue
    .line 128
    new-array v0, p1, [Lcom/android/contacts/editor/ViewIdGenerator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ViewIdGenerator$1;->newArray(I)[Lcom/android/contacts/editor/ViewIdGenerator;

    move-result-object v0

    return-object v0
.end method
