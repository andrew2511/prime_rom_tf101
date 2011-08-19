.class public Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;
.super Ljava/lang/Object;
.source "ErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ErrorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorParams"
.end annotation


# static fields
.field private static final PARAM_MESSAGE_TEXT:Ljava/lang/String; = "messageText"

.field private static final PARAM_NEGATIVE_TEXT:Ljava/lang/String; = "negativeText"

.field private static final PARAM_POSITIVE_INTENT:Ljava/lang/String; = "positiveIntent"

.field private static final PARAM_POSITIVE_TEXT:Ljava/lang/String; = "positiveText"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageText(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 63
    const-string v0, "messageText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getNegativeText(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 71
    const-string v0, "negativeText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPositiveIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 75
    const-string v0, "positiveIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public static getPositiveText(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 67
    const-string v0, "positiveText"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "bundle"
    .parameter "text"

    .prologue
    .line 47
    const-string v0, "messageText"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public static setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "bundle"
    .parameter "text"

    .prologue
    .line 55
    const-string v0, "negativeText"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public static setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1
    .parameter "bundle"
    .parameter "intent"

    .prologue
    .line 59
    const-string v0, "positiveIntent"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public static setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "bundle"
    .parameter "text"

    .prologue
    .line 51
    const-string v0, "positiveText"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
