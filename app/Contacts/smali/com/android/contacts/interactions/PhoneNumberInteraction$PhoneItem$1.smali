.class final Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
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
        "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    .locals 3
    .parameter "source"

    .prologue
    .line 84
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    .line 85
    .local v0, item:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;->newArray(I)[Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    move-result-object v0

    return-object v0
.end method
