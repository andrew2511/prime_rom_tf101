.class final Lcom/android/contacts/list/ContactListFilter$1;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListFilter;
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
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactListFilter;
    .locals 4
    .parameter "source"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, filterType:I
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 219
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    .line 224
    return-object v0

    .line 223
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "size"

    .prologue
    .line 229
    new-array v0, p1, [Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter$1;->newArray(I)[Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method
