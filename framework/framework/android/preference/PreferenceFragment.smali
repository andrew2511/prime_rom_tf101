.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    new-instance v0, Landroid/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Landroid/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .registers 3

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 321
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_d

    .line 322
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 324
    :cond_d
    return-void
.end method

.method private ensureList()V
    .registers 5

    .prologue
    .line 333
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_5

    .line 353
    :goto_4
    return-void

    .line 336
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 337
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_13

    .line 338
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_13
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, rawListView:Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_26

    .line 342
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_26
    check-cast v0, Landroid/widget/ListView;

    .end local v0           #rawListView:Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 347
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_36

    .line 348
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_36
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method private postBindPreferences()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    :goto_9
    return-void

    .line 316
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method private requirePreferenceManager()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_c

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_c
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 265
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 266
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .registers 5
    .parameter "preferencesResId"

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 277
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 279
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .parameter "key"

    .prologue
    .line 302
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_5
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    .line 329
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 162
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_12

    .line 163
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    .line 166
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    .line 168
    if-eqz p1, :cond_28

    .line 169
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_28

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 172
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_28

    .line 173
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 177
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_28
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v0, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 147
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 153
    const v0, 0x109006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 203
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 204
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 195
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 198
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 286
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_19

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    .line 291
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 211
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_16

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 214
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    .end local v0           #container:Landroid/os/Bundle;
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 182
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 183
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 188
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 189
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 190
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 3
    .parameter "preferenceScreen"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    .line 241
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_14

    .line 242
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    .line 245
    :cond_14
    return-void
.end method
