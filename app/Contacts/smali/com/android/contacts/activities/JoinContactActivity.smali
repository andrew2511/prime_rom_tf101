.class public Lcom/android/contacts/activities/JoinContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 168
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/JoinContactListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 68
    instance-of v0, p1, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/android/contacts/list/JoinContactListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V

    .line 72
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070051

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v3, -0x1

    .line 76
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 80
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 81
    const-string v1, "JoinContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing required extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setContentView(I)V

    .line 89
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->setTitle(I)V

    .line 91
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/JoinContactListFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f07002b

    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 141
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->onSearchRequested()Z

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x7f0700d0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 136
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 130
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    .line 104
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$1;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 124
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 159
    if-eqz p4, :cond_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListFragment;->startSearch(Ljava/lang/String;)V

    goto :goto_0
.end method
