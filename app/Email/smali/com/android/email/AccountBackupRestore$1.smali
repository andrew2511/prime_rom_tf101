.class final Lcom/android/email/AccountBackupRestore$1;
.super Ljava/lang/Thread;
.source "AccountBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/email/AccountBackupRestore$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/AccountBackupRestore$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/AccountBackupRestore$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/AccountBackupRestore;->doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V

    .line 56
    return-void
.end method
