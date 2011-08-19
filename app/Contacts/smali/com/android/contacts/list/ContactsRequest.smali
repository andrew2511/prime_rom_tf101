.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionCode:I

.field private mContactUri:Landroid/net/Uri;

.field private mDirectorySearchEnabled:Z

.field private mGroupName:Ljava/lang/String;

.field private mLegacyCompatibilityMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/contacts/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 85
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 92
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 93
    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 94
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 95
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 96
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 97
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    .line 99
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 100
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 101
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 102
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 174
    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 162
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactUri"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 226
    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 218
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .parameter "groupName"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 206
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setRedirectIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 158
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 182
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_1

    :cond_2
    move v0, v1

    .line 135
    goto :goto_2

    :cond_3
    move v0, v1

    .line 136
    goto :goto_3
.end method
