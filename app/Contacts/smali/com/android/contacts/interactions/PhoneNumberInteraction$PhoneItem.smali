.class Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accountType:Ljava/lang/String;

.field id:J

.field label:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field type:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;

    invoke-direct {v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem$1;-><init>()V

    sput-object v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z
    .locals 1
    .parameter "phoneItem"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->shouldCollapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->collapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z
    .locals 2
    .parameter "phoneItem"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->shouldCollapseWith(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
