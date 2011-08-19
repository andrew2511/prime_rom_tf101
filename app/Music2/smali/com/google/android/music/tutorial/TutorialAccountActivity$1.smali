.class Lcom/google/android/music/tutorial/TutorialAccountActivity$1;
.super Ljava/lang/Object;
.source "TutorialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialAccountActivity;->authenticationSuccess(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    const-class v2, Lcom/google/android/music/tutorial/TutorialDoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->access$200(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
