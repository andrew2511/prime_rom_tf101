.class final Lcom/android/gallery3d/picasa/PicasaService$1;
.super Ljava/lang/Thread;
.source "PicasaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/picasa/PicasaService;->startSyncAll(Landroid/content/Context;)V
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
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.android.gallery3d.SYNC_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v1, "com.android.gallery3d.SYNC_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaService$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/SyncResult;

    invoke-direct {v3}, Landroid/content/SyncResult;-><init>()V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/gallery3d/picasa/PicasaService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;Z)Z

    .line 63
    return-void
.end method
