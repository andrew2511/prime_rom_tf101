.class public Lcom/google/android/finsky/activities/TosActivity;
.super Landroid/app/Activity;
.source "TosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/google/android/finsky/activities/TosActivity;->mContent:Ljava/lang/String;

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/TosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "finsky.TosActivity.account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "finsky.TosActivity.tos"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method

.method private static makeTosKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "tosContent"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onAccepted()V
    .locals 4

    .prologue
    .line 92
    const-string v1, "finsky"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/activities/TosActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TosActivity;->mContent:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/TosActivity;->makeTosKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/TosActivity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->finish()V

    .line 99
    return-void
.end method

.method private onDeclined()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/TosActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->finish()V

    .line 104
    return-void
.end method

.method public static requiresAcceptance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "tosContent"

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v1, "finsky"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-static {p1, p2}, Lcom/google/android/finsky/activities/TosActivity;->makeTosKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TosActivity;->onAccepted()V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TosActivity;->onDeclined()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0900a5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 63
    .local v0, initBundle:Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    const-string v2, "finsky.TosActivity.account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    .line 65
    const-string v2, "finsky.TosActivity.tos"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mContent:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mContent:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 70
    :cond_1
    const-string v2, "Bad request to Terms of Service activity."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->finish()V

    .line 82
    :goto_1
    return-void

    .line 62
    .end local v0           #initBundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 75
    .restart local v0       #initBundle:Landroid/os/Bundle;
    :cond_3
    const v2, 0x7f040044

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/TosActivity;->setContentView(I)V

    .line 76
    const v2, 0x7f0900a5

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f0900a6

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v2, 0x7f090086

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, mainContent:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 81
    iget-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "finsky.TosActivity.account"

    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "finsky.TosActivity.tos"

    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
