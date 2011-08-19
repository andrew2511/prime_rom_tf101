.class Lcom/google/android/voicesearch/HelpDialog$8;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$800(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getHelpVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09077f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 259
    const-string v2, "http://www.youtube.com/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    :try_start_0
    const-string v2, "com.google.android.youtube"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 265
    const-string v0, "com.google.android.youtube"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$900(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->videoLaunched()V

    .line 273
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    goto :goto_1
.end method
