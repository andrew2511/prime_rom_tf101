.class public Lcom/android/contacts/model/GoogleAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "GoogleAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 38
    const-string v0, "com.google"

    iput-object v0, p0, Lcom/android/contacts/model/GoogleAccountType;->accountType:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/GoogleAccountType;->resPackageName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/contacts/model/GoogleAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/model/GoogleAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 58
    return-void
.end method

.method private addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter

    .prologue
    const v2, 0x7f0c00fc

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 136
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v3, -0x1

    const/16 v4, 0x96

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GoogleAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 139
    new-instance v1, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v3, "data1"

    invoke-direct {v1, v3}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 140
    const-class v1, Lcom/android/contacts/editor/EventFieldEditorView;

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->editorClass:Ljava/lang/Class;

    .line 142
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 144
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 145
    sget-object v1, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 146
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7, v5}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v6, v6}, Lcom/android/contacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    const-string v4, "data3"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 153
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v3, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 156
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data1"

    invoke-direct {v3, v4, v2, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-object v0
.end method

.method private addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0c00fd

    const/16 v7, 0xe

    const/4 v5, 0x1

    .line 101
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/relation"

    const/4 v3, -0x1

    const/16 v4, 0xa0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GoogleAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 103
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 104
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 106
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 108
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 126
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 129
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v6
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 86
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 88
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 95
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0046

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 64
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 66
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 77
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0045

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method
