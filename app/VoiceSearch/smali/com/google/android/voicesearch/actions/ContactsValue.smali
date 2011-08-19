.class public Lcom/google/android/voicesearch/actions/ContactsValue;
.super Lcom/google/android/voicesearch/actions/SlotValue;
.source "ContactsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/ContactsValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/voicesearch/actions/ContactsValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/ContactsValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/ContactsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    const-class v1, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/actions/Contact;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/actions/ContactsValue;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p1, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Ljava/util/List;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-object v0
.end method

.method public asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 102
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactWithAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 107
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_1
.end method

.method public get(I)Lcom/google/android/voicesearch/actions/Contact;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/Contact;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 78
    return-void
.end method
