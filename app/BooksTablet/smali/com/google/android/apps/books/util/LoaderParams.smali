.class public Lcom/google/android/apps/books/util/LoaderParams;
.super Ljava/lang/Object;
.source "LoaderParams.java"


# static fields
.field private static final PARAM_ACCOUNT:Ljava/lang/String; = "account"

.field private static final PARAM_ADD_TO_MY_EBOOKS:Ljava/lang/String; = "addToMyEBooks"

.field private static final PARAM_READER_FADEIN:Ljava/lang/String; = "readerFadeIn"

.field private static final PARAM_UPDATE_VOLUME_OVERVIEW:Ljava/lang/String; = "updateVolumeOverview"

.field private static final PARAM_VOLUME_ID:Ljava/lang/String; = "volumeId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 1
    .parameter "account"

    .prologue
    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/LoaderParams;->setAccount(Landroid/os/Bundle;Landroid/accounts/Account;)V

    .line 23
    return-object v0
.end method

.method public static buildFrom(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/LoaderParams;->setAccount(Landroid/os/Bundle;Landroid/accounts/Account;)V

    .line 29
    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/LoaderParams;->setVolumeId(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method public static getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;
    .locals 1
    .parameter "args"

    .prologue
    .line 67
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method

.method public static getAddToMyEBooks(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "args"

    .prologue
    .line 99
    const-string v0, "addToMyEBooks"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getReaderFadeIn(Landroid/os/Bundle;Z)Z
    .locals 3
    .parameter "args"
    .parameter "consumeArgument"

    .prologue
    const-string v2, "readerFadeIn"

    .line 87
    const-string v1, "readerFadeIn"

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    .local v0, result:Z
    if-eqz p1, :cond_0

    .line 89
    const-string v1, "readerFadeIn"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 91
    :cond_0
    return v0
.end method

.method public static getUpdateVolumeOverview(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "args"

    .prologue
    .line 79
    const-string v0, "updateVolumeOverview"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "args"

    .prologue
    .line 71
    const-string v0, "volumeId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAccount(Landroid/os/Bundle;Landroid/accounts/Account;)V
    .locals 1
    .parameter "args"
    .parameter "account"

    .prologue
    .line 34
    const-string v0, "missing account"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "account"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    return-void
.end method

.method public static setAddToMyEBooks(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "args"
    .parameter "addToMyEBooks"

    .prologue
    .line 63
    const-string v0, "addToMyEBooks"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public static setReaderFadeIn(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "args"
    .parameter "readerFadeIn"

    .prologue
    .line 55
    const-string v0, "readerFadeIn"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public static setUpdateVolumeOverview(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "args"
    .parameter "updateVolumeOverview"

    .prologue
    .line 48
    const-string v0, "updateVolumeOverview"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public static setVolumeId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "args"
    .parameter "volumeId"

    .prologue
    .line 39
    const-string v0, "missing account"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "volumeId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
