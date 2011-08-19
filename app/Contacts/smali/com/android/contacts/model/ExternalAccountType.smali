.class public Lcom/android/contacts/model/ExternalAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "ExternalAccountType.java"


# instance fields
.field private mCreateContactActivityClassName:Ljava/lang/String;

.field private mEditContactActivityClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/contacts/model/ExternalAccountType;->resPackageName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/contacts/model/ExternalAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 61
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.content.SyncAdapter"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v6, syncAdapter:Landroid/content/Intent;
    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 65
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 66
    .local v5, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    const-string v7, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 69
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/model/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 75
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #parser:Landroid/content/res/XmlResourceParser;
    .end local v5           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/AccountType$DataKind;

    .line 79
    return-void
.end method


# virtual methods
.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 101
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 106
    .local v6, attrs:Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 110
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 111
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "No start tag found"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v16           #type:I
    :catch_0
    move-exception v17

    move-object/from16 v10, v17

    .line 177
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Problem reading XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 114
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16       #type:I
    :cond_2
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, rootTag:Ljava/lang/String;
    const-string v17, "ContactsAccountType"

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "ContactsSource"

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 117
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    .end local v13           #rootTag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_1
    move-exception v17

    move-object/from16 v10, v17

    .line 179
    .local v10, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Problem reading XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 121
    .end local v10           #e:Ljava/io/IOException;
    .restart local v13       #rootTag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_3
    :try_start_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 122
    .local v5, attributeCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v5, :cond_6

    .line 123
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, attr:Ljava/lang/String;
    const-string v17, "editContactActivity"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 125
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 122
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 126
    :cond_4
    const-string v17, "createContactActivity"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 127
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_1

    .line 129
    :cond_5
    const-string v17, "ExternalAccountType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported attribute "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v4           #attr:Ljava/lang/String;
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 136
    .local v7, depth:I
    :cond_7
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-le v0, v1, :cond_c

    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 137
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, tag:Ljava/lang/String;
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const-string v17, "ContactsDataKind"

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 142
    sget-object v17, Landroid/R$styleable;->ContactsDataKind:[I

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 144
    .local v3, a:Landroid/content/res/TypedArray;
    new-instance v12, Lcom/android/contacts/model/AccountType$DataKind;

    invoke-direct {v12}, Lcom/android/contacts/model/AccountType$DataKind;-><init>()V

    .line 146
    .local v12, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/16 v17, 0x1

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    iput-object v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    .line 148
    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object v0, v3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->iconRes:I

    .line 151
    const/16 v17, 0x2

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 153
    .local v14, summaryColumn:Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 155
    new-instance v17, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v12

    iput-object v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 158
    :cond_9
    const/16 v17, 0x3

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, detailColumn:Ljava/lang/String;
    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v0, v3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 164
    .local v9, detailSocialSummary:Z
    if-eqz v9, :cond_a

    .line 166
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->actionBodySocial:Z

    .line 169
    :cond_a
    if-eqz v8, :cond_b

    .line 171
    new-instance v17, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v12

    iput-object v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 174
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ExternalAccountType;->addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 181
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v8           #detailColumn:Ljava/lang/String;
    .end local v9           #detailSocialSummary:Z
    .end local v12           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v14           #summaryColumn:Ljava/lang/String;
    .end local v15           #tag:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method
