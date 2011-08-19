.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$Property;,
        Lcom/android/vcard/VCardEntry$PhotoData;,
        Lcom/android/vcard/VCardEntry$ImData;,
        Lcom/android/vcard/VCardEntry$OrganizationData;,
        Lcom/android/vcard/VCardEntry$PostalData;,
        Lcom/android/vcard/VCardEntry$EmailData;,
        Lcom/android/vcard/VCardEntry$PhoneData;
    }
.end annotation


# static fields
.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnniversary:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mFormattedName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNickNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticFullName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuffix:Ljava/lang/String;

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 69
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 483
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    .line 484
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 488
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 0
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput p1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 492
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 493
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private addIm(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "propValue"
    .parameter "isPrimary"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 675
    :cond_0
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 553
    :cond_0
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 1
    .parameter "nickName"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .parameter "note"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 496
    iget-object v8, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 497
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, trimed:Ljava/lang/String;
    const/4 v8, 0x6

    if-eq p1, v8, :cond_1

    iget v8, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v8}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 503
    :cond_1
    move-object v2, v7

    .line 516
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v6, p1, v2, p3, p4}, Lcom/android/vcard/VCardEntry$PhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 517
    .local v6, phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    iget-object v8, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    return-void

    .line 505
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v6           #phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 506
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 507
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 508
    .local v1, ch:C
    const/16 v8, 0x30

    if-gt v8, v1, :cond_3

    const/16 v8, 0x39

    if-le v1, v8, :cond_4

    :cond_3
    if-nez v4, :cond_5

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_5

    .line 509
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 513
    .end local v1           #ch:C
    :cond_6
    iget v8, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v3

    .line 514
    .local v3, formattingType:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 689
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardEntry$PhotoData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/android/vcard/VCardEntry$PhotoData;-><init>(ILjava/lang/String;[BZ)V

    .line 690
    .local v0, photoData:Lcom/android/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$PostalData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$PostalData;-><init>(ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 562
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 564
    const-string v5, "VCardEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 570
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 574
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 576
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1124
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1125
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1146
    :cond_1
    return-void

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1127
    :cond_3
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1129
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1131
    :cond_5
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1133
    :cond_6
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1134
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1135
    :cond_7
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1136
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1137
    :cond_8
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1138
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1139
    :cond_9
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 736
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 740
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v2, :cond_1

    .line 755
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 743
    .restart local v0       #size:I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 744
    const/4 v0, 0x5

    .line 747
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 753
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 749
    :pswitch_0
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    .line 750
    :pswitch_1
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    .line 751
    :pswitch_2
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    .line 752
    :pswitch_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    goto :goto_1

    .line 747
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 14
    .parameter "type"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p2, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 590
    .local v7, phoneticName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 591
    sget-object p2, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 595
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    .line 596
    .local v13, size:I
    packed-switch v13, :pswitch_data_0

    .line 608
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 611
    .local v4, companyName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v9, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 613
    const/4 v2, 0x1

    if-le v10, v2, :cond_1

    .line 614
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    :cond_1
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 598
    .end local v4           #companyName:Ljava/lang/String;
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_0
    const-string v4, ""

    .line 599
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 621
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v5, departmentName:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 624
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 643
    :goto_2
    return-void

    .line 603
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 604
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 605
    .restart local v5       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 618
    .end local v5           #departmentName:Ljava/lang/String;
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .restart local v9       #builder:Ljava/lang/StringBuilder;
    .restart local v10       #i:I
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 627
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 630
    .local v12, organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    iget-object v2, v12, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v12, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 634
    iput-object v4, v12, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 635
    iput-object v5, v12, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    .line 636
    move/from16 v0, p4

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    goto :goto_2

    .line 642
    .end local v12           #organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_5
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 765
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    if-lt v4, v8, :cond_0

    .line 780
    if-le v4, v10, :cond_2

    .line 781
    const/4 v4, 0x3

    .line 784
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 785
    const/4 v3, 0x1

    .line 786
    .local v3, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 787
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 788
    const/4 v3, 0x0

    .line 792
    :cond_3
    if-eqz v3, :cond_7

    .line 793
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, namesArray:[Ljava/lang/String;
    array-length v1, v2

    .line 795
    .local v1, nameArrayLength:I
    if-ne v1, v10, :cond_5

    .line 797
    aget-object v5, v2, v7

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    .line 798
    aget-object v5, v2, v8

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 799
    aget-object v5, v2, v9

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_0

    .line 786
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    .restart local v1       #nameArrayLength:I
    .restart local v2       #namesArray:[Ljava/lang/String;
    :cond_5
    if-ne v1, v9, :cond_6

    .line 803
    aget-object v5, v2, v7

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    .line 804
    aget-object v5, v2, v8

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_0

    .line 806
    :cond_6
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_0

    .line 812
    .end local v0           #i:I
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    .end local v3           #onlyFirstElemIsNonEmpty:Z
    :cond_7
    packed-switch v4, :pswitch_data_0

    .line 816
    :goto_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 814
    :pswitch_0
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 815
    :pswitch_1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_2

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    .line 656
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 668
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 660
    .local v8, organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    iget-object v0, v8, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 661
    iput-object p1, v8, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    goto :goto_0

    .end local v8           #organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_2
    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    .line 667
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1444
    .local v3, size:I
    if-le v3, v6, :cond_2

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1446
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1447
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1448
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_0

    .line 1450
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1453
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1457
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_1
    return-object v5

    .line 1454
    .restart local p0
    :cond_2
    if-ne v3, v6, :cond_3

    .line 1455
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_1

    .line 1457
    .restart local p0
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method private nameFieldsAreEmpty()Z
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 704
    iget v3, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 712
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 714
    const-string v3, "VCardEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 720
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 721
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 722
    const/4 v0, 0x3

    .line 724
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 727
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 725
    :pswitch_0
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 726
    :pswitch_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_1

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addProperty(Lcom/android/vcard/VCardEntry$Property;)V
    .locals 30
    .parameter "property"

    .prologue
    .line 821
    invoke-static/range {p1 .. p1}, Lcom/android/vcard/VCardEntry$Property;->access$000(Lcom/android/vcard/VCardEntry$Property;)Ljava/lang/String;

    move-result-object v20

    .line 822
    .local v20, propName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/vcard/VCardEntry$Property;->access$100(Lcom/android/vcard/VCardEntry$Property;)Ljava/util/Map;

    move-result-object v15

    .line 823
    .local v15, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/vcard/VCardEntry$Property;->access$200(Lcom/android/vcard/VCardEntry$Property;)Ljava/util/List;

    move-result-object v21

    .line 824
    .local v21, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/vcard/VCardEntry$Property;->access$300(Lcom/android/vcard/VCardEntry$Property;)[B

    move-result-object v19

    .line 826
    .local v19, propBytes:[B
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1110
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 829
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, propValue:Ljava/lang/String;
    const-string v5, "VERSION"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 833
    const-string v5, "FN"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 834
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_2
    const-string v5, "NAME"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 838
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_0

    .line 839
    :cond_3
    const-string v5, "N"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 841
    :cond_4
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 842
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_0

    .line 843
    :cond_5
    const-string v5, "NICKNAME"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 845
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_7
    const-string v5, "SOUND"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 847
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 848
    .local v22, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 856
    .local v18, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 860
    .end local v18           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_8
    const-string v5, "ADR"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 861
    const/16 v29, 0x1

    .line 862
    .local v29, valuesAreAllEmpty:Z
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 863
    .local v28, value:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 864
    const/16 v29, 0x0

    .line 868
    .end local v28           #value:Ljava/lang/String;
    :cond_a
    if-nez v29, :cond_0

    .line 872
    const/4 v8, -0x1

    .line 873
    .local v8, type:I
    const-string v14, ""

    .line 874
    .local v14, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 875
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 876
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v22, :cond_11

    .line 877
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 878
    .local v25, typeStringOrg:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 879
    .local v26, typeStringUpperCase:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 880
    const/4 v10, 0x1

    goto :goto_1

    .line 881
    :cond_c
    const-string v5, "HOME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 882
    const/4 v8, 0x1

    .line 883
    const-string v14, ""

    goto :goto_1

    .line 884
    :cond_d
    const-string v5, "WORK"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "COMPANY"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 890
    :cond_e
    const/4 v8, 0x2

    .line 891
    const-string v14, ""

    goto :goto_1

    .line 892
    :cond_f
    const-string v5, "PARCEL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "DOM"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "INTL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 896
    if-gez v8, :cond_b

    .line 897
    const/4 v8, 0x0

    .line 898
    const-string v5, "X-"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 899
    const/4 v5, 0x2

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 901
    :cond_10
    move-object/from16 v14, v25

    goto :goto_1

    .line 907
    .end local v25           #typeStringOrg:Ljava/lang/String;
    .end local v26           #typeStringUpperCase:Ljava/lang/String;
    :cond_11
    if-gez v8, :cond_12

    .line 908
    const/4 v8, 0x1

    .line 911
    :cond_12
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 912
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #label:Ljava/lang/String;
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v29           #valuesAreAllEmpty:Z
    :cond_13
    const-string v5, "EMAIL"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 913
    const/4 v8, -0x1

    .line 914
    .restart local v8       #type:I
    const/4 v14, 0x0

    .line 915
    .restart local v14       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 916
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 917
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v22, :cond_1a

    .line 918
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_14
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 919
    .restart local v25       #typeStringOrg:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 920
    .restart local v26       #typeStringUpperCase:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 921
    const/4 v10, 0x1

    goto :goto_2

    .line 922
    :cond_15
    const-string v5, "HOME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 923
    const/4 v8, 0x1

    goto :goto_2

    .line 924
    :cond_16
    const-string v5, "WORK"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 925
    const/4 v8, 0x2

    goto :goto_2

    .line 926
    :cond_17
    const-string v5, "CELL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 927
    const/4 v8, 0x4

    goto :goto_2

    .line 928
    :cond_18
    if-gez v8, :cond_14

    .line 929
    const-string v5, "X-"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 930
    const/4 v5, 0x2

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 934
    :goto_3
    const/4 v8, 0x0

    goto :goto_2

    .line 932
    :cond_19
    move-object/from16 v14, v25

    goto :goto_3

    .line 938
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v25           #typeStringOrg:Ljava/lang/String;
    .end local v26           #typeStringUpperCase:Ljava/lang/String;
    :cond_1a
    if-gez v8, :cond_1b

    .line 939
    const/4 v8, 0x3

    .line 941
    :cond_1b
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 942
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1c
    const-string v5, "ORG"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 944
    const/4 v8, 0x1

    .line 945
    .restart local v8       #type:I
    const/4 v10, 0x0

    .line 946
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 947
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v22, :cond_1e

    .line 948
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_1d
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 949
    .local v24, typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 950
    const/4 v10, 0x1

    goto :goto_4

    .line 954
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v24           #typeString:Ljava/lang/String;
    :cond_1e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v21

    move-object v3, v15

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 955
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1f
    const-string v5, "TITLE"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 956
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 957
    :cond_20
    const-string v5, "ROLE"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 960
    const-string v5, "PHOTO"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "LOGO"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 962
    :cond_21
    const-string v5, "VALUE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    .line 963
    .local v16, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v16, :cond_22

    const-string v5, "URL"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 966
    :cond_22
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 967
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 968
    .local v12, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 969
    .restart local v10       #isPrimary:Z
    if-eqz v22, :cond_25

    .line 970
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_23
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 971
    .local v27, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 972
    const/4 v10, 0x1

    goto :goto_5

    .line 973
    :cond_24
    if-nez v12, :cond_23

    .line 974
    move-object/from16 v12, v27

    goto :goto_5

    .line 978
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v27           #typeValue:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v19

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 980
    .end local v10           #isPrimary:Z
    .end local v12           #formatName:Ljava/lang/String;
    .end local v16           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_26
    const-string v5, "TEL"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 985
    const-string v5, "sip:"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 986
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    if-nez v5, :cond_27

    .line 988
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    .line 990
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 993
    :cond_28
    const-string v5, "tel:"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 994
    const/4 v5, 0x4

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 1005
    .local v17, phoneNumber:Ljava/lang/String;
    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1008
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 1009
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .line 1013
    .local v23, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_2b

    .line 1014
    check-cast v23, Ljava/lang/Integer;

    .end local v23           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1015
    .restart local v8       #type:I
    const/4 v14, 0x0

    .line 1022
    .restart local v14       #label:Ljava/lang/String;
    :goto_7
    if-eqz v22, :cond_2c

    const-string v5, "PREF"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1024
    const/4 v10, 0x1

    .line 1028
    .restart local v10       #isPrimary:Z
    :goto_8
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v17

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 999
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v17           #phoneNumber:Ljava/lang/String;
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v17, v9

    .restart local v17       #phoneNumber:Ljava/lang/String;
    goto :goto_6

    .line 1002
    .end local v17           #phoneNumber:Ljava/lang/String;
    :cond_2a
    move-object/from16 v17, v9

    .restart local v17       #phoneNumber:Ljava/lang/String;
    goto :goto_6

    .line 1017
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v23       #typeObject:Ljava/lang/Object;
    :cond_2b
    const/4 v8, 0x0

    .line 1018
    .restart local v8       #type:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #label:Ljava/lang/String;
    goto :goto_7

    .line 1026
    .end local v23           #typeObject:Ljava/lang/Object;
    :cond_2c
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_8

    .line 1029
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v17           #phoneNumber:Ljava/lang/String;
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2d
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1031
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 1032
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x7

    .line 1034
    .restart local v8       #type:I
    if-eqz v22, :cond_2e

    const-string v5, "PREF"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1035
    const/4 v10, 0x1

    .line 1039
    .restart local v10       #isPrimary:Z
    :goto_9
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v9

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1037
    .end local v10           #isPrimary:Z
    :cond_2e
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_9

    .line 1040
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2f
    sget-object v5, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1041
    sget-object v5, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1042
    .local v6, protocol:I
    const/4 v10, 0x0

    .line 1043
    .restart local v10       #isPrimary:Z
    const/4 v8, -0x1

    .line 1044
    .restart local v8       #type:I
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 1045
    .restart local v22       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v22, :cond_33

    .line 1046
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_30
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1047
    .restart local v24       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1048
    const/4 v10, 0x1

    goto :goto_a

    .line 1049
    :cond_31
    if-gez v8, :cond_30

    .line 1050
    const-string v5, "HOME"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1051
    const/4 v8, 0x1

    goto :goto_a

    .line 1052
    :cond_32
    const-string v5, "WORK"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1053
    const/4 v8, 0x2

    goto :goto_a

    .line 1058
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v24           #typeString:Ljava/lang/String;
    :cond_33
    if-gez v8, :cond_34

    .line 1059
    const/4 v8, 0x1

    .line 1061
    :cond_34
    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/vcard/VCardEntry;->addIm(ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 1062
    .end local v6           #protocol:I
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v22           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p1
    :cond_35
    const-string v5, "NOTE"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1063
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1064
    :cond_36
    const-string v5, "URL"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_37

    .line 1066
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 1068
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1069
    :cond_38
    const-string v5, "BDAY"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1070
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_0

    .line 1071
    :cond_39
    const-string v5, "ANNIVERSARY"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1072
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    goto/16 :goto_0

    .line 1073
    :cond_3a
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1074
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1075
    :cond_3b
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1076
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1077
    :cond_3c
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1078
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1079
    :cond_3d
    const-string v5, "IMPP"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1081
    const-string v5, "sip:"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    if-nez v5, :cond_3e

    .line 1083
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    .line 1085
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1087
    :cond_3f
    const-string v5, "X-SIP"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1088
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    if-nez v5, :cond_40

    .line 1090
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    .line 1093
    :cond_40
    const-string v5, "sip:"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1094
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1100
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object v5, v0

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1103
    :cond_42
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1106
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public consolidateFields()V
    .locals 1

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()V

    .line 1154
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    .line 1157
    :cond_0
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 25
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1175
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p2, :cond_0

    .line 1176
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .restart local p2       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1183
    .local v4, backReferenceIndex:I
    sget-object v23, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1185
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1186
    const-string v23, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1187
    const-string v23, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1192
    :goto_0
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    invoke-direct/range {p0 .. p0}, Lcom/android/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v23

    if-nez v23, :cond_3

    .line 1195
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1196
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1197
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/name"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1199
    const-string v23, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1200
    const-string v23, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1201
    const-string v23, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1202
    const-string v23, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1203
    const-string v23, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 1208
    :cond_1
    const-string v23, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1209
    const-string v23, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1210
    const-string v23, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1215
    :cond_2
    :goto_1
    const-string v23, "data1"

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1216
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_6

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1221
    .local v14, nickName:Ljava/lang/String;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1222
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1223
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/nickname"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1224
    const-string v23, "data2"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1225
    const-string v23, "data1"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1226
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1189
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #nickName:Ljava/lang/String;
    :cond_4
    const-string v23, "account_name"

    const/16 v24, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1190
    const-string v23, "account_type"

    const/16 v24, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 1211
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1212
    const-string v23, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1230
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 1232
    .local v17, phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1233
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1234
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1236
    const-string v23, "data2"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;->type:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1237
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;->type:I

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 1238
    const-string v23, "data3"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1240
    :cond_7
    const-string v23, "data1"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1241
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 1242
    const-string v23, "is_primary"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1244
    :cond_8
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1248
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1250
    .local v16, organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1251
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1252
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/organization"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1253
    const-string v23, "data2"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->type:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1254
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1255
    const-string v23, "data1"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1257
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1258
    const-string v23, "data5"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1260
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1261
    const-string v23, "data4"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1263
    :cond_c
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    .line 1264
    const-string v23, "data8"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1266
    :cond_d
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 1267
    const-string v23, "is_primary"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1269
    :cond_e
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1273
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vcard/VCardEntry$EmailData;

    .line 1275
    .local v8, emailData:Lcom/android/vcard/VCardEntry$EmailData;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1276
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1277
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/email_v2"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1279
    const-string v23, "data2"

    move-object v0, v8

    iget v0, v0, Lcom/android/vcard/VCardEntry$EmailData;->type:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1280
    move-object v0, v8

    iget v0, v0, Lcom/android/vcard/VCardEntry$EmailData;->type:I

    move/from16 v23, v0

    if-nez v23, :cond_10

    .line 1281
    const-string v23, "data3"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1283
    :cond_10
    const-string v23, "data1"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1284
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/vcard/VCardEntry$EmailData;->isPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 1285
    const-string v23, "is_primary"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1287
    :cond_11
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1291
    .end local v8           #emailData:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/vcard/VCardEntry$PostalData;

    .line 1293
    .local v19, postalData:Lcom/android/vcard/VCardEntry$PostalData;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v19

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Lcom/android/vcard/VCardEntry$PostalData;I)V

    .line 1296
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1300
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v19           #postalData:Lcom/android/vcard/VCardEntry$PostalData;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/vcard/VCardEntry$ImData;

    .line 1302
    .local v12, imData:Lcom/android/vcard/VCardEntry$ImData;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1303
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1304
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/im"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1305
    const-string v23, "data2"

    move-object v0, v12

    iget v0, v0, Lcom/android/vcard/VCardEntry$ImData;->type:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1306
    const-string v23, "data5"

    move-object v0, v12

    iget v0, v0, Lcom/android/vcard/VCardEntry$ImData;->protocol:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1307
    const-string v23, "data1"

    move-object v0, v12

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1308
    move-object v0, v12

    iget v0, v0, Lcom/android/vcard/VCardEntry$ImData;->protocol:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 1309
    const-string v23, "data6"

    move-object v0, v12

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1311
    :cond_14
    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vcard/VCardEntry$ImData;->isPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 1312
    const-string v23, "is_primary"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1314
    :cond_15
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1318
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #imData:Lcom/android/vcard/VCardEntry$ImData;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1320
    .local v15, note:Ljava/lang/String;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1321
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1322
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/note"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1323
    const-string v23, "data1"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1324
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1328
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #note:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 1330
    .local v18, photoData:Lcom/android/vcard/VCardEntry$PhotoData;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1331
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1332
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/photo"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1333
    const-string v23, "data15"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1334
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 1335
    const-string v23, "is_primary"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1337
    :cond_18
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1341
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v18           #photoData:Lcom/android/vcard/VCardEntry$PhotoData;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1343
    .local v22, website:Ljava/lang/String;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1344
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1345
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/website"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1346
    const-string v23, "data1"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1349
    const-string v23, "data2"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1350
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1354
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v22           #website:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1b

    .line 1355
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1356
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1357
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/contact_event"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1358
    const-string v23, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1359
    const-string v23, "data2"

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1360
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 1364
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1365
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1366
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/contact_event"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1367
    const-string v23, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1368
    const-string v23, "data2"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1369
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1d

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mSipSet:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1374
    .local v20, sipAddress:Ljava/lang/String;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1375
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1376
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/sip_address"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1377
    const-string v23, "data1"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1378
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1382
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v20           #sipAddress:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local p0
    :cond_1e
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1384
    .local v6, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    .line 1385
    .local v21, size:I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_1e

    const/16 v23, 0x0

    move-object v0, v6

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1e

    .line 1387
    const/16 v23, 0x10

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_1f

    .line 1388
    const/16 v21, 0x10

    .line 1389
    const/16 v23, 0x0

    const/16 v24, 0x11

    move-object v0, v6

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 1393
    :cond_1f
    const/4 v9, 0x0

    .line 1394
    .local v9, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1395
    .local v7, customPropertyValue:Ljava/lang/String;
    if-nez v9, :cond_21

    .line 1396
    move-object v13, v7

    .line 1397
    .local v13, mimeType:Ljava/lang/String;
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1398
    const-string v23, "raw_contact_id"

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1400
    const-string v23, "mimetype"

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1407
    .end local v13           #mimeType:Ljava/lang/String;
    :cond_20
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 1402
    :cond_21
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_20

    .line 1403
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "data"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_e

    .line 1409
    .end local v7           #customPropertyValue:Ljava/lang/String;
    :cond_22
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1413
    .end local v6           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #size:I
    :cond_23
    return-object p2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1551
    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()V

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
