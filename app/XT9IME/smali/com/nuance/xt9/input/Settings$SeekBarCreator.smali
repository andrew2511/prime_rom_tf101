.class Lcom/nuance/xt9/input/Settings$SeekBarCreator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekBarCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/Settings;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/nuance/xt9/input/Settings$SeekBarCreator;->this$0:Lcom/nuance/xt9/input/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "pref"

    .prologue
    .line 472
    instance-of v2, p1, Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 473
    const/4 v2, 0x0

    .line 482
    .end local p1
    :goto_0
    return v2

    .line 476
    .restart local p1
    :cond_0
    new-instance v1, Lcom/nuance/xt9/input/XT9SeekBarPreference;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/xt9/input/XT9SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 477
    .local v1, sb:Lcom/nuance/xt9/input/XT9SeekBarPreference;
    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->setDialogTitle(I)V

    .line 478
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->setParent(Landroid/preference/PreferenceScreen;)V

    .line 480
    check-cast p1, Landroid/preference/PreferenceScreen;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 481
    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9SeekBarPreference;->show()V

    .line 482
    const/4 v2, 0x1

    goto :goto_0
.end method
