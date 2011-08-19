.class final Lcom/android/contacts/list/ContactsRequest$1;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactsRequest;
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
        "Lcom/android/contacts/list/ContactsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactsRequest;
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 112
    .local v0, classLoader:Ljava/lang/ClassLoader;
    new-instance v1, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 113
    .local v1, request:Lcom/android/contacts/list/ContactsRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$102(Lcom/android/contacts/list/ContactsRequest;I)I

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/android/contacts/list/ContactsRequest;->access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$602(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$702(Lcom/android/contacts/list/ContactsRequest;Z)Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-static {v1, p0}, Lcom/android/contacts/list/ContactsRequest;->access$902(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;

    .line 123
    return-object v1

    .restart local p0
    :cond_0
    move v2, v3

    .line 113
    goto :goto_0

    .end local p0
    :cond_1
    move v2, v3

    .line 117
    goto :goto_1

    :cond_2
    move v2, v3

    .line 120
    goto :goto_2

    :cond_3
    move v2, v3

    .line 121
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactsRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/list/ContactsRequest;
    .locals 1
    .parameter "size"

    .prologue
    .line 107
    new-array v0, p1, [Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactsRequest$1;->newArray(I)[Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    return-object v0
.end method
