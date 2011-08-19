.class Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
.end annotation


# instance fields
.field private mServices:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Accounts;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/Accounts;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    .line 103
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 104
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->mServices:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->mServices:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f0c0075

    const/4 v9, 0x0

    const v8, 0x7f0c0074

    .line 121
    if-nez p2, :cond_2

    .line 122
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001b

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, result:Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->mServices:[Ljava/lang/Object;

    array-length v4, v5

    .line 126
    .local v4, total:I
    if-lt p1, v4, :cond_5

    .line 127
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    if-ne p1, v4, :cond_3

    const v7, 0x7f09007e

    :goto_1
    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    if-ne p1, v4, :cond_4

    const v7, 0x7f0900d1

    :goto_2
    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    .local v0, enabled:Z
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->mServices:[Ljava/lang/Object;

    aget-object v2, v5, v9

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 133
    .local v2, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->isImplicitlyActivated()Z

    move-result v0

    .line 135
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    .end local v0           #enabled:Z
    .end local v2           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :cond_1
    :goto_3
    return-object v1

    .line 124
    .end local v1           #result:Landroid/view/View;
    .end local v4           #total:I
    .restart local p0
    :cond_2
    move-object v1, p2

    .restart local v1       #result:Landroid/view/View;
    goto :goto_0

    .line 127
    .restart local v4       #total:I
    :cond_3
    const v7, 0x7f090077

    goto :goto_1

    .line 128
    :cond_4
    const v7, 0x7f0900d2

    goto :goto_2

    .line 141
    :cond_5
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;->mServices:[Ljava/lang/Object;

    aget-object v2, v5, p1

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 142
    .restart local v2       #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 144
    .local v3, summary:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method
