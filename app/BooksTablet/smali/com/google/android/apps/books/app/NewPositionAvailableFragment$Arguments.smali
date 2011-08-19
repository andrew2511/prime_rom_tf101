.class public Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;
.super Ljava/lang/Object;
.source "NewPositionAvailableFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/NewPositionAvailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments$Keys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static create(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"
    .parameter "chapterTitle"
    .parameter "pageTitle"

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    const-string v1, "volumeId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "position"

    invoke-virtual {p2}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "chapterTitle"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "pageTitle"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method static getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 45
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method

.method static getChapterTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 54
    const-string v0, "chapterTitle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPageTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 57
    const-string v0, "pageTitle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPosition(Landroid/os/Bundle;)Lcom/google/android/apps/books/common/Position;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    const-string v1, "position"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 48
    const-string v0, "volumeId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
