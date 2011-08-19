.class Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TutorialAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/TutorialAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_RESOURCE_ID:I = 0x7f040000


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    .line 275
    const/high16 v0, 0x7f04

    const/4 v1, -0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 276
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 277
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 289
    if-nez p2, :cond_0

    .line 290
    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 291
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;

    invoke-direct {v3, p0, v2}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;-><init>(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;

    .line 298
    .local v1, vh:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 299
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v1, v0}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->access$302(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 301
    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-static {v3}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$400(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-static {v3}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$400(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->access$600(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/RadioButton;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 307
    :goto_1
    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->access$700(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-object v2

    .line 293
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #vh:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 304
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #vh:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;
    :cond_1
    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->access$600(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 282
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-static {v0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$500(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$400(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
