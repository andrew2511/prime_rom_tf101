.class public Lcom/android/contacts/util/LocalizedNameResolver;
.super Ljava/lang/Object;
.source "LocalizedNameResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 57
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/util/LocalizedNameResolver;->resolveAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadAllContactsNameFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "parser"
    .parameter "packageName"

    .prologue
    .line 104
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 107
    .local v0, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    .line 111
    :cond_1
    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    .line 112
    new-instance p0, Ljava/lang/IllegalStateException;

    .end local p0
    const-string p1, "No start tag found"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    .end local v0           #attrs:Landroid/util/AttributeSet;
    .end local v2           #type:I
    :catch_0
    move-exception p0

    .line 156
    .local p0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Problem reading XML"

    .end local p2
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 115
    .restart local v0       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #type:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 117
    .local v1, depth:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .end local v2           #type:I
    .local v3, type:I
    const/4 v2, 0x3

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_7

    :cond_3
    const/4 v2, 0x1

    if-eq v3, v2, :cond_7

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const-string v4, "ContactsDataKind"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #name:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 120
    sget-object p1, Landroid/R$styleable;->ContactsDataKind:[I

    .end local p1
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 124
    .local v0, typedArray:Landroid/content/res/TypedArray;
    const/4 p1, 0x5

    :try_start_2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    .line 126
    .local p1, nonResourceString:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 150
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object p0, p1

    .line 154
    .end local v0           #typedArray:Landroid/content/res/TypedArray;
    .end local v1           #depth:I
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #nonResourceString:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 132
    .restart local v0       #typedArray:Landroid/content/res/TypedArray;
    .restart local v1       #depth:I
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #nonResourceString:Ljava/lang/String;
    :cond_4
    const/4 p1, 0x5

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1           #depth:I
    .end local p1           #nonResourceString:Ljava/lang/String;
    move-result p1

    .line 134
    .local p1, id:I
    if-nez p1, :cond_5

    const/4 p0, 0x0

    .line 150
    .end local p0           #context:Landroid/content/Context;
    :try_start_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 157
    .end local v0           #typedArray:Landroid/content/res/TypedArray;
    .end local v3           #type:I
    .end local p1           #id:I
    :catch_1
    move-exception p0

    .line 158
    .local p0, e:Ljava/io/IOException;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Problem reading XML"

    .end local p2
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 137
    .restart local v0       #typedArray:Landroid/content/res/TypedArray;
    .restart local v3       #type:I
    .local p0, context:Landroid/content/Context;
    .restart local p1       #id:I
    .restart local p2
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object p0

    .line 140
    .local p0, packageManager:Landroid/content/pm/PackageManager;
    :try_start_7
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object p0

    .line 145
    .local p0, resources:Landroid/content/res/Resources;
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object p0

    .line 150
    .end local p0           #resources:Landroid/content/res/Resources;
    :try_start_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 141
    .local p0, packageManager:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception p0

    .line 142
    .local p0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 p0, 0x0

    .line 150
    .end local p0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 146
    .local p0, resources:Landroid/content/res/Resources;
    :catch_3
    move-exception p0

    .line 147
    .local p0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 p0, 0x0

    .line 150
    .end local p0           #e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .end local p1           #id:I
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .local v0, attrs:Landroid/util/AttributeSet;
    .restart local v1       #depth:I
    .local p0, context:Landroid/content/Context;
    .local p1, parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    move v2, v3

    .line 153
    .end local v3           #type:I
    .local v2, type:I
    goto :goto_0

    .line 154
    .end local v2           #type:I
    .restart local v3       #type:I
    :cond_7
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static resolveAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 67
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 69
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 70
    .local v2, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/contacts/util/LocalizedNameResolver;->resolveAllContactsNameFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .end local v2           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v5

    .line 69
    .restart local v2       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v2           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static resolveAllContactsNameFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 85
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x84

    :try_start_0
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 87
    .local v5, pi:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_1

    .line 88
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 89
    .local v7, si:Landroid/content/pm/ServiceInfo;
    const-string v8, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 90
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 91
    invoke-static {p0, v4, p1}, Lcom/android/contacts/util/LocalizedNameResolver;->loadAllContactsNameFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 98
    .end local v0           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v5           #pi:Landroid/content/pm/PackageInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :goto_1
    return-object v8

    .line 88
    .restart local v0       #arr$:[Landroid/content/pm/ServiceInfo;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v5       #pi:Landroid/content/pm/PackageInfo;
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v5           #pi:Landroid/content/pm/PackageInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 96
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "LocalizedNameResolver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem loading \"All Contacts\"-name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method
