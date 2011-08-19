.class Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter$1;
.super Ljava/lang/Object;
.source "ServiceAutoStarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter;->clearTalkLoginState(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter$1;->this$0:Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 110
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ServiceAutoStarter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;-><init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V

    .line 118
    .local v0, settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAutomaticallyConnectToGTalkServer()Z

    move-result v6

    .line 119
    .local v6, alwaysSignIn:Z
    if-nez v6, :cond_0

    .line 120
    const-string v2, "GTalkService"

    const-string v3, "[ServiceAutoStarter] Talk setting: alwaysSignIn=false, clear last login state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v8, values:Landroid/content/ContentValues;
    const-string v2, "last_login_state"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "last_login_state"

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v7, buf:Ljava/lang/StringBuilder;
    const-string v2, "=1"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    sget-object v2, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v7           #buf:Ljava/lang/StringBuilder;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->close()V

    .line 137
    return-void

    .line 135
    .end local v6           #alwaysSignIn:Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->close()V

    throw v2
.end method
