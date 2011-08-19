.class public Lcom/asus/reader/VibeActivity$mMyCloudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/VibeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mMyCloudReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "c"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 2182
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2183
    .local v2, bunde:Landroid/os/Bundle;
    const-string v5, "MyCloud"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2184
    .local v4, str:Ljava/lang/String;
    const-string v5, "ASUSREADER"

    const-string v6, "MyCloud Broadcast."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string v5, "AccountInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2186
    .local v0, accinfo:[B
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 2187
    const-string v5, "Close"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2189
    const-string v5, "ASUSREADER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyCloud Logout. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/asus/reader/vibe2/VibeAgent;->setLogin(Z)V

    .line 2191
    iget-object v5, p0, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v6, v6, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x4f3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2209
    .end local v0           #accinfo:[B
    .end local v2           #bunde:Landroid/os/Bundle;
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2193
    .restart local v0       #accinfo:[B
    .restart local v2       #bunde:Landroid/os/Bundle;
    .restart local v4       #str:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    array-length v5, v0

    if-le v5, v7, :cond_0

    .line 2194
    const-string v5, "ASUSREADER"

    const-string v6, "MyCloud Login. "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-static {v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->getAccountInfo([B)[Ljava/lang/String;

    move-result-object v1

    .line 2196
    .local v1, accountInfos:[Ljava/lang/String;
    array-length v5, v1

    const/16 v6, 0xe

    if-lt v5, v6, :cond_0

    .line 2197
    iget-object v5, p0, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/asus/reader/vibe2/MyCloudUtil;->setMyLibraryVibeAccount(Landroid/content/Context;Lcom/asus/reader/vibe2/VibeAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/asus/reader/vibe2/VibeAgent;->setLogin(Z)V

    .line 2199
    const-string v5, "ASUSREADER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Login @vibe."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v5, p0, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v6, v6, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x4ef

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2203
    .end local v0           #accinfo:[B
    .end local v1           #accountInfos:[Ljava/lang/String;
    .end local v2           #bunde:Landroid/os/Bundle;
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 2204
    .local v3, e:Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 2206
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 2207
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method
