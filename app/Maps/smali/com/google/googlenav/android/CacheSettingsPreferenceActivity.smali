.class public Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;


# static fields
.field private static final a:Z

.field private static b:Ljava/lang/Boolean;


# instance fields
.field private final c:[B

.field private d:Z

.field private e:LE/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->d:Z

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c:[B

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->d:Z

    if-nez v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const-string v1, "cache_settings_clear_cache"

    invoke-virtual {p0, v1}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->g()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, LA/m;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized a(Z)V
    .locals 2

    const-class v0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const-class v0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, "cache_settings_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cache_settings_prefetch_over_mobile_networks"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b:Ljava/lang/Boolean;

    :cond_1
    sget-object v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c:[B

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "Debug"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v2, "cache_settings_debug_info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v2, "Show debug info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->d:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 10

    const/16 v9, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->e:LE/f;

    invoke-interface {v1}, LE/f;->c()LE/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LE/h;->a()J

    move-result-wide v2

    const/16 v4, 0x274

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->p()Lac/p;

    move-result-object v5

    invoke-interface {v5}, Lac/p;->a()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_1

    cmp-long v7, v2, v5

    if-gez v7, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->i()Lac/v;

    move-result-object v4

    invoke-interface {v4, v2, v3, v5, v6}, Lac/v;->a(JJ)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/16 v3, 0x1ee

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, LE/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, v4

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x58

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "cache_settings_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const-string v0, "cache_settings_prefetch_over_mobile_networks"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a:Z

    if-nez v1, :cond_1

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    const-string v0, "cache_settings_clear_cache"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "offline_maps"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/16 v1, 0x28c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/prefetch/android/f;->a()Lcom/google/googlenav/prefetch/android/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/prefetch/android/f;->b(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/16 v2, 0x298

    :goto_1
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->r()LE/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->e:LE/f;

    invoke-direct {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b()V

    iget-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c:[B

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x297

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v1, 0x7f0201e5

    const/high16 v4, 0x104

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0xb5

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/googlenav/android/z;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/z;-><init>(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Debug Info"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c:[B

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache_settings_clear_cache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->showDialog(I)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const-string v1, "cache_settings_prefetch_over_mobile_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a(Z)V

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v1, "offline_maps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->finish()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aj()V

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "cache_settings_debug_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/prefetch/android/f;->a()Lcom/google/googlenav/prefetch/android/f;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/android/A;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/android/A;-><init>(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/prefetch/android/f;->a(Lcom/google/googlenav/prefetch/android/w;)V

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "cache_settings_debug_force_prefetch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->e:LE/f;

    invoke-interface {v0}, LE/f;->b()V

    const-string v0, "Fire the force prefetch request successfully."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c:[B

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
