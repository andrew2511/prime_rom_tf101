.class final Lcom/android/contacts/util/AccountSelectionUtil$1;
.super Landroid/widget/ArrayAdapter;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    .local p3, x2:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iput-object p4, p0, Lcom/android/contacts/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/android/contacts/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v5, p0, Lcom/android/contacts/util/AccountSelectionUtil$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    :cond_0
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, text1:Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 120
    .local v4, text2:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountSelectionUtil$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 121
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p0, Lcom/android/contacts/util/AccountSelectionUtil$1;->val$accountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 122
    .local v1, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {p0}, Lcom/android/contacts/util/AccountSelectionUtil$1;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 124
    .local v2, context:Landroid/content/Context;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-object p2
.end method
