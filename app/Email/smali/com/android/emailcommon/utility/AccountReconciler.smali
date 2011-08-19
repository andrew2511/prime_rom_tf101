.class public Lcom/android/emailcommon/utility/AccountReconciler;
.super Ljava/lang/Object;
.source "AccountReconciler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, accountsDeleted:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #accountsDeleted:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .local v1, accountsDeleted:Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 58
    .local v7, providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 59
    .local v8, providerAccountName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 60
    .local v3, found:Z
    move-object v2, p2

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v0, v2, v5

    .line 61
    .local v0, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local v0           #accountManagerAccount:Landroid/accounts/Account;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 66
    .end local v3           #found:Z
    .local v0, found:Z
    :goto_2
    if-nez v0, :cond_7

    .line 67
    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .end local v0           #found:Z
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "Email"

    const-string v2, "Account reconciler noticed incomplete account; ignoring"

    .end local v2           #arr$:[Landroid/accounts/Account;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #found:Z
    :cond_0
    add-int/lit8 v0, v5, 0x1

    .end local v5           #i$:I
    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 73
    .end local v3           #found:Z
    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #accountsDeleted:Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account deleted in AccountManager; deleting from provider: "

    .end local v2           #arr$:[Landroid/accounts/Account;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x1

    .local v0, accountsDeleted:Z
    :goto_3
    move v1, v0

    .line 81
    .end local v0           #accountsDeleted:Z
    .restart local v1       #accountsDeleted:Z
    goto :goto_0

    .line 84
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #providerAccountName:Ljava/lang/String;
    :cond_2
    move-object v2, p2

    .restart local v2       #arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 p2, 0x0

    .local p2, i$:I
    move v5, p2

    .end local p2           #i$:I
    .restart local v5       #i$:I
    move v0, v1

    .end local v1           #accountsDeleted:Z
    .end local p3
    .restart local v0       #accountsDeleted:Z
    :goto_4
    if-ge v5, v6, :cond_4

    aget-object p2, v2, v5

    .line 85
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    iget-object p3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 86
    .local p3, accountManagerAccountName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 87
    .local v1, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    move v3, v1

    .end local v1           #found:Z
    .end local v5           #i$:I
    .restart local v3       #found:Z
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 88
    .local v1, cachedEasAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .end local v1           #cachedEasAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    const/4 v1, 0x1

    .end local v3           #found:Z
    .local v1, found:Z
    :goto_6
    move v3, v1

    .end local v1           #found:Z
    .restart local v3       #found:Z
    goto :goto_5

    .line 92
    :cond_3
    if-nez v3, :cond_5

    .line 94
    const-string v0, "Email"

    .end local v0           #accountsDeleted:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account deleted from provider; deleting from AccountManager: "

    .end local v3           #found:Z
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #accountManagerAccountName:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p2

    .line 103
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    .end local p2           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :goto_7
    const/4 p2, 0x1

    .line 84
    .local p2, accountsDeleted:Z
    :goto_8
    add-int/lit8 p3, v5, 0x1

    .local p3, i$:I
    move v5, p3

    .end local p3           #i$:I
    .restart local v5       #i$:I
    move v0, p2

    .end local p2           #accountsDeleted:Z
    .restart local v0       #accountsDeleted:Z
    goto :goto_4

    .line 104
    .end local v0           #accountsDeleted:Z
    .end local v5           #i$:I
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception p2

    .line 105
    .local p2, e:Landroid/accounts/OperationCanceledException;
    const-string p3, "Email"

    invoke-virtual {p2}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Landroid/accounts/OperationCanceledException;
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 106
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_1
    move-exception p2

    .line 107
    .local p2, e:Landroid/accounts/AuthenticatorException;
    const-string p3, "Email"

    invoke-virtual {p2}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Landroid/accounts/AuthenticatorException;
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 108
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_2
    move-exception p2

    .line 109
    .local p2, e:Ljava/io/IOException;
    const-string p3, "Email"

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Ljava/io/IOException;
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 114
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v0       #accountsDeleted:Z
    .restart local v5       #i$:I
    :cond_4
    return v0

    .end local v5           #i$:I
    .restart local v3       #found:Z
    .restart local v4       #i$:Ljava/util/Iterator;
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    .local p3, accountManagerAccountName:Ljava/lang/String;
    :cond_5
    move p2, v0

    .end local v0           #accountsDeleted:Z
    .local p2, accountsDeleted:Z
    goto :goto_8

    .restart local v0       #accountsDeleted:Z
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    :cond_6
    move v1, v3

    .end local v3           #found:Z
    .restart local v1       #found:Z
    goto :goto_6

    .end local v4           #i$:Ljava/util/Iterator;
    .local v0, found:Z
    .local v1, accountsDeleted:Z
    .restart local v5       #i$:I
    .restart local v7       #providerAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v8       #providerAccountName:Ljava/lang/String;
    .local p2, accountManagerAccounts:[Landroid/accounts/Account;
    .local p3, resolver:Landroid/content/ContentResolver;
    :cond_7
    move v0, v1

    .end local v1           #accountsDeleted:Z
    .local v0, accountsDeleted:Z
    goto :goto_3

    .end local v0           #accountsDeleted:Z
    .restart local v1       #accountsDeleted:Z
    .restart local v3       #found:Z
    :cond_8
    move v0, v3

    .end local v3           #found:Z
    .local v0, found:Z
    goto/16 :goto_2
.end method
