.class public Lcom/android/email/activity/setup/AccountSettingsUtils;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 4
    .parameter "context"
    .parameter "passwordField"

    .prologue
    const/16 v3, 0x20

    .line 223
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 224
    .local v1, password:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 225
    .local v0, length:I
    if-lez v0, :cond_1

    .line 226
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 227
    :cond_0
    const v2, 0x7f0800c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    return-void
.end method

.method public static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 53
    :goto_0
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 54
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;

    move-result-object v0

    .line 50
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 2
    .parameter "context"
    .parameter "domain"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/VendorPolicyLoader;->findProviderForDomain(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 88
    .local v0, p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-nez v0, :cond_0

    .line 89
    const v1, 0x7f060008

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 91
    :cond_0
    if-nez v0, :cond_1

    .line 92
    const v1, 0x7f060007

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 94
    :cond_1
    return-object v0
.end method

.method private static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 7
    .parameter "context"
    .parameter "domain"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x2

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 108
    .local v2, xml:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 109
    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, xmlEventType:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 110
    if-ne v3, v6, :cond_2

    const-string v4, "provider"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "domain"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 114
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, "id"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 115
    const-string v4, "label"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 116
    const-string v4, "domain"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 117
    const-string v4, "note"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .end local v2           #xml:Landroid/content/res/XmlResourceParser;
    .end local v3           #xmlEventType:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Email"

    const-string v5, "Error while trying to load provider settings."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 119
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v2       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v3       #xmlEventType:I
    :cond_2
    if-ne v3, v6, :cond_3

    :try_start_1
    const-string v4, "incoming"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 122
    const-string v4, "uri"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 123
    const-string v4, "username"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_3
    if-ne v3, v6, :cond_4

    const-string v4, "outgoing"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 128
    const-string v4, "uri"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 129
    const-string v4, "username"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v4, "provider"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move-object v4, v1

    .line 134
    goto :goto_1
.end method

.method public static getAccountContentValues(Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;
    .locals 4
    .parameter "account"

    .prologue
    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 63
    const-string v1, "displayName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "senderName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "signature"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v1, "securityFlags"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "xml"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 154
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "server"
    .parameter "incoming"
    .parameter "outgoing"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, keepFirstChar:I
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 192
    .local v0, firstDotIndex:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 194
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, firstWord:Ljava/lang/String;
    const-string v5, "imap"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    move v2, v5

    .line 197
    .local v2, isImapOrPop:Z
    :goto_0
    const-string v5, "mail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 199
    .local v3, isMail:Z
    if-eqz p1, :cond_3

    .line 201
    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    move-object v5, p0

    .line 216
    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :goto_1
    return-object v5

    .restart local v1       #firstWord:Ljava/lang/String;
    :cond_2
    move v2, v6

    .line 195
    goto :goto_0

    .line 207
    .restart local v2       #isImapOrPop:Z
    .restart local v3       #isMail:Z
    :cond_3
    if-eqz v2, :cond_5

    .line 208
    add-int/lit8 v4, v0, 0x1

    .line 216
    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    move-object v6, p1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 209
    .restart local v1       #firstWord:Ljava/lang/String;
    .restart local v2       #isImapOrPop:Z
    .restart local v3       #isMail:Z
    :cond_5
    if-eqz v3, :cond_4

    move-object v5, p0

    .line 210
    goto :goto_1

    .end local v1           #firstWord:Ljava/lang/String;
    .end local v2           #isImapOrPop:Z
    .end local v3           #isMail:Z
    :cond_6
    move-object v6, p2

    .line 216
    goto :goto_2
.end method
