.class public Lcom/google/android/apps/books/app/PromptAddVolumeDialog$Arguments;
.super Ljava/lang/Object;
.source "PromptAddVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/PromptAddVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/PromptAddVolumeDialog$Arguments$Keys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static create(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string v1, "volumeId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method static getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 46
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method

.method static getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 49
    const-string v0, "volumeId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
