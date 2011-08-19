.class Lcom/google/android/music/AccountSettings$4;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$4;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$4;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$400(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$302([Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 193
    return-void
.end method
