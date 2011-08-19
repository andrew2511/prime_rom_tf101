.class public Lcom/google/android/apps/books/app/BooksApplication$AccountParams;
.super Ljava/lang/Object;
.source "BooksApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountParams"
.end annotation


# static fields
.field private static final PARAM_ACCOUNT:Ljava/lang/String; = "com.google.android.apps.books.ACCOUNT"

.field private static final PARAM_ACCOUNT_OPTIONAL:Ljava/lang/String; = "com.google.android.apps.books.ACCOUNT_OPTIONAL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccount(Lorg/apache/http/params/HttpParams;)Landroid/accounts/Account;
    .locals 1
    .parameter "params"

    .prologue
    .line 207
    const-string v0, "com.google.android.apps.books.ACCOUNT"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method

.method public static getAccountOptional(Lorg/apache/http/params/HttpParams;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 211
    const-string v1, "com.google.android.apps.books.ACCOUNT_OPTIONAL"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 212
    .local v0, optional:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static setAccount(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;)V
    .locals 2
    .parameter "request"
    .parameter "account"

    .prologue
    .line 194
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "com.google.android.apps.books.ACCOUNT"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 195
    return-void
.end method

.method public static setAccount(Lorg/apache/http/params/HttpParams;Landroid/accounts/Account;)V
    .locals 1
    .parameter "params"
    .parameter "account"

    .prologue
    .line 190
    const-string v0, "com.google.android.apps.books.ACCOUNT"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 191
    return-void
.end method

.method public static setAccountOptional(Lorg/apache/http/params/HttpParams;Z)V
    .locals 2
    .parameter "params"
    .parameter "optional"

    .prologue
    .line 203
    const-string v0, "com.google.android.apps.books.ACCOUNT_OPTIONAL"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 204
    return-void
.end method
