.class Lcom/nuance/xt9/input/AboutPreference;
.super Landroid/preference/Preference;
.source "AboutPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AboutPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nuance/xt9/input/About;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 16
    .local v0, aboutIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AboutPreference;->setIntent(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
