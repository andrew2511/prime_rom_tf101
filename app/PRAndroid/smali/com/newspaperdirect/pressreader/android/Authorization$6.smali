.class Lcom/newspaperdirect/pressreader/android/Authorization$6;
.super Ljava/lang/Object;
.source "Authorization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Authorization;->finished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Authorization;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$6;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.newspaperdirect.pressreader.android.LocalStore.ReloadCalalog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$6;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-virtual {v1, v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$6;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/Authorization;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toLocalStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$6;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/Authorization$6;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    const-class v4, Lcom/newspaperdirect/pressreader/android/Main;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "tab"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/Authorization;->startActivity(Landroid/content/Intent;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$6;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/Authorization;->finish()V

    goto :goto_0
.end method
