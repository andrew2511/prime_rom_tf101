.class public Lcom/android/contacts/model/PCSyncAccountType;
.super Lcom/android/contacts/model/ExchangeAccountType;
.source "PCSyncAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    const-string v0, "com.asus.pcsync"

    iput-object v0, p0, Lcom/android/contacts/model/PCSyncAccountType;->accountType:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/android/contacts/model/PCSyncAccountType;->addDataKindEvent()Lcom/android/contacts/model/AccountType$DataKind;

    .line 17
    return-void
.end method


# virtual methods
.method protected addDataKindEvent()Lcom/android/contacts/model/AccountType$DataKind;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 20
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/PCSyncAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 21
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iput-boolean v3, v0, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 22
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 23
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 24
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/model/PCSyncAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-object v0
.end method
