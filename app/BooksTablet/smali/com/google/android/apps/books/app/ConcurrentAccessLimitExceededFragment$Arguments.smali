.class public Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;
.super Ljava/lang/Object;
.source "ConcurrentAccessLimitExceededFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments$Keys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static create(I)Landroid/os/Bundle;
    .locals 2
    .parameter "maxDevices"

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "maxDevices"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    return-object v0
.end method

.method static getMaxDevices(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 32
    const-string v0, "maxDevices"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
