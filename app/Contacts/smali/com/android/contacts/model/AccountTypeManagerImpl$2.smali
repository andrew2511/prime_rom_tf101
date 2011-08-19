.class final Lcom/android/contacts/model/AccountTypeManagerImpl$2;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/accounts/Account;Landroid/accounts/Account;)I
    .locals 3
    .parameter "account1"
    .parameter "account2"

    .prologue
    .line 129
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, diff:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 133
    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    check-cast p1, Landroid/accounts/Account;

    .end local p1
    check-cast p2, Landroid/accounts/Account;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->compare(Landroid/accounts/Account;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method
