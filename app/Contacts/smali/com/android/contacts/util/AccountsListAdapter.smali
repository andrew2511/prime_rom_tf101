.class public final Lcom/android/contacts/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "writableOnly"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 46
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v0, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/accounts/Account;
    .locals 1
    .parameter "position"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 55
    .local v3, resultView:Landroid/view/View;
    :goto_0
    const v6, 0x1020014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 56
    .local v4, text1:Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 57
    .local v5, text2:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 59
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 60
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 62
    .local v1, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-object v3

    .line 52
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #resultView:Landroid/view/View;
    .end local v4           #text1:Landroid/widget/TextView;
    .end local v5           #text2:Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v7, 0x7f04

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    goto :goto_0
.end method
