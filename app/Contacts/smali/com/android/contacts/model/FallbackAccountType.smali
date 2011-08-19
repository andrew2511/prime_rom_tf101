.class public Lcom/android/contacts/model/FallbackAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "FallbackAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/contacts/model/FallbackAccountType;->accountType:Ljava/lang/String;

    .line 27
    const v0, 0x7f0c010b

    iput v0, p0, Lcom/android/contacts/model/FallbackAccountType;->titleRes:I

    .line 28
    const/high16 v0, 0x7f03

    iput v0, p0, Lcom/android/contacts/model/FallbackAccountType;->iconRes:I

    .line 30
    iput-object v1, p0, Lcom/android/contacts/model/FallbackAccountType;->resPackageName:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/android/contacts/model/FallbackAccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/FallbackAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 46
    return-void
.end method
