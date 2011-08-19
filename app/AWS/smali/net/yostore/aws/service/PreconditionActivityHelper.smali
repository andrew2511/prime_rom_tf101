.class public Lnet/yostore/aws/service/PreconditionActivityHelper;
.super Ljava/lang/Object;
.source "PreconditionActivityHelper.java"


# static fields
.field private static final EXTRA_WRAPPED_INTENT:Ljava/lang/String; = "PreconditionActivityHelper_wrappedIntent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPreconditionIntent(Landroid/app/Activity;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .parameter "activity"
    .parameter "preconditionActivityClazz"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, newIntent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    const-string v1, "PreconditionActivityHelper_wrappedIntent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method public static startOriginalActivityAndFinish(Landroid/app/Activity;)V
    .locals 2
    .parameter "preconditionActivity"

    .prologue
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-string v1, "PreconditionActivityHelper_wrappedIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    return-void
.end method

.method public static startPreconditionActivityAndFinish(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void
.end method
