.class Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
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
.field final synthetic this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "accounts"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 211
    .local v0, account:Landroid/accounts/Account;
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-object p2
.end method
