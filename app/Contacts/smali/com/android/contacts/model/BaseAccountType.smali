.class public Lcom/android/contacts/model/BaseAccountType;
.super Lcom/android/contacts/model/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/BaseAccountType$ImActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$EventActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$CommonInflater;,
        Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/contacts/model/AccountType;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/BaseAccountType;->accountType:Ljava/lang/String;

    .line 67
    const v0, 0x7f0c010b

    iput v0, p0, Lcom/android/contacts/model/BaseAccountType;->titleRes:I

    .line 68
    const/high16 v0, 0x7f03

    iput v0, p0, Lcom/android/contacts/model/BaseAccountType;->iconRes:I

    .line 69
    return-void
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7f0c0152

    const v2, 0x7f0c00f8

    const/4 v3, -0x1

    const/16 v8, 0x2061

    const/4 v5, 0x1

    .line 130
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "#displayName"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v7

    .line 132
    .local v7, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 133
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 136
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c0151

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 142
    .local v6, displayOrderPrimary:Z
    if-nez v6, :cond_0

    .line 143
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0c0154

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0c0153

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0c0155

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0c0156

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    return-object v7

    .line 154
    :cond_0
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0c0154

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0c0155

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0c0153

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v7, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0c0156

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0c0046

    const/4 v5, 0x1

    .line 245
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const v3, 0x7f0200a4

    const/16 v4, 0xf

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 247
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 248
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 249
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 250
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 251
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 259
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-object v6
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    .line 390
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 391
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/group_membership"

    const v2, 0x7f0c00fe

    const v3, 0x1080094

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 395
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 396
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    invoke-direct {v1, v2, v7, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0c0047

    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 287
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/im"

    const v3, 0x7f0200a8

    const/16 v4, 0x14

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 289
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 290
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 295
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 296
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v0, "data5"

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 300
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data6"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 312
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-object v6
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const v2, 0x7f0c00f9

    .line 189
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/nickname"

    const/4 v3, -0x1

    const/16 v4, 0x73

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 192
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 193
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 194
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 196
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 199
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-object v6
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0c003d

    .line 341
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/note"

    const/4 v3, -0x1

    const/16 v4, 0x6e

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 343
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 344
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 345
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 346
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 347
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x24001

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-object v6
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x2001

    .line 318
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0c00fa

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 320
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 321
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 324
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 325
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c0041

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0c0042

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0c0045

    const/16 v4, 0xa

    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 206
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const v3, 0x108008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 208
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const v0, 0x7f0200a7

    iput v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->iconAltRes:I

    .line 209
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 210
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 211
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 212
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 214
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 239
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-object v6
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0c015a

    const/4 v3, -0x1

    const/16 v7, 0xc1

    const/4 v5, 0x1

    .line 170
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "#phoneticName"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 172
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0c00f8

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 173
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 175
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 176
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "#phoneticName"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0c0159

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0c0158

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0c0157

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 334
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/photo"

    const/4 v5, 0x1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 335
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 336
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-object v6
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0c003e

    .line 376
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/sip_address"

    const v3, 0x108008d

    const/16 v4, 0x82

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 379
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 380
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 381
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 382
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 383
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-object v6
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const v2, 0x7f0c00f8

    const/4 v3, -0x1

    const/16 v8, 0xc1

    const/16 v7, 0x2061

    const/4 v5, 0x1

    .line 101
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 103
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 104
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 106
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 107
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c0151

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0c0154

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0c0153

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0c0155

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0c0152

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0c0156

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0c0159

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0c0158

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0c0157

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 265
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0c0048

    const v3, 0x7f0200a6

    const/16 v4, 0x19

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 268
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 269
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 270
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    .line 272
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 279
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c0149

    const v4, 0x22071

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v7}, Lcom/android/contacts/model/AccountType$EditField;->setMinLines(I)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-object v6
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 7
    .parameter "context"

    .prologue
    const v2, 0x7f0c00fb

    .line 353
    new-instance v0, Lcom/android/contacts/model/AccountType$DataKind;

    const-string v1, "vnd.android.cursor.item/website"

    const v3, 0x7f0200a5

    const/16 v4, 0x78

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 356
    .local v6, kind:Lcom/android/contacts/model/AccountType$DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 357
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 359
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .line 362
    iget-object v0, v6, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-object v6
.end method

.method protected buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 77
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setUnspecifiedType(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"
    .parameter "yearOptional"

    .prologue
    .line 92
    new-instance v0, Lcom/android/contacts/model/AccountType$EventEditType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/android/contacts/model/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EventEditType;->setUnspecifiedType(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected buildImType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 87
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setUnspecifiedType(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 72
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setUnspecifiedType(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 82
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setUnspecifiedType(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 97
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method
