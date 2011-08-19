.class public Lcom/android/contacts/model/ExchangeAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "ExchangeAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 45
    const-string v0, "com.android.exchange"

    iput-object v0, p0, Lcom/android/contacts/model/ExchangeAccountType;->accountType:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ExchangeAccountType;->resPackageName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/contacts/model/ExchangeAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 63
    return-void
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 11
    .parameter "context"

    .prologue
    const v10, 0x7f0c0153

    const v9, 0x7f0c0152

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/16 v8, 0x2061

    .line 96
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "#displayName"

    const v2, 0x7f0c00f8

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v7

    .line 99
    .local v7, kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 101
    .local v6, displayOrderPrimary:Z
    iput v5, v7, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 103
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 104
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0c0154

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    if-nez v6, :cond_0

    .line 107
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0c0155

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_0
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0c0156

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v7

    .line 114
    :cond_0
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0c0155

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 192
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 194
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 195
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0046

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-object v0
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0c00fc

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 295
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v3, -0x1

    const/16 v4, 0x96

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 298
    new-instance v1, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v3, "data1"

    invoke-direct {v1, v3}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 300
    iput-boolean v6, v0, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 302
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 303
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 304
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v6}, Lcom/android/contacts/model/ExchangeAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v1, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 307
    const-class v1, Lcom/android/contacts/editor/EventFieldEditorView;

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->editorClass:Ljava/lang/Class;

    .line 309
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 310
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data1"

    invoke-direct {v3, v4, v2, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-object v0
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    .line 243
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 246
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iput v3, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 249
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 252
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0047

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-object v0
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 149
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 151
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 152
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c00f9

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v0
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 288
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 289
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c003d

    const v5, 0x24001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0x2001

    .line 259
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 261
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 263
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 264
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0041

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f0c0042

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 160
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 162
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 164
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 183
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0045

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object v0
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0xc1

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 129
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "#phoneticName"

    const v2, 0x7f0c015a

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 131
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0c00f8

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 132
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 134
    iput v5, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 137
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0c0159

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0c0157

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 274
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 276
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 278
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 279
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v2, v3, v4, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const v2, 0x7f0c00f8

    const/16 v8, 0xc1

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/16 v7, 0x2061

    .line 67
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 69
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 70
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 72
    iput v5, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 74
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 75
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0c0154

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0c0153

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0c0155

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0c0152

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0c0156

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0c0159

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0c0157

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7f0c014d

    const v8, 0x7f0c014a

    const/4 v4, 0x3

    const/4 v7, 0x1

    const v6, 0x22071

    .line 202
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 204
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 206
    .local v1, useJapaneseOrder:Z
    const-string v2, "data2"

    iput-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 208
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iput v4, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 213
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 214
    if-eqz v1, :cond_0

    .line 215
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0c0150

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0c014f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0c014e

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0c014e

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0c014f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0c0150

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 319
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 321
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 322
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c00fb

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-object v0
.end method
