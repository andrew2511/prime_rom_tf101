.class Lcom/aws/mycloud/view/MyCloudActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MyCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/mycloud/view/MyCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aws/mycloud/view/MyCloudActivity;


# direct methods
.method constructor <init>(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sortVibeApps([Ljava/lang/String;)[Z
    .locals 7
    .parameter "mainStringList"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 118
    const/4 v2, 0x5

    new-array v1, v2, [Z

    .line 119
    .local v1, bs:[Z
    array-length v2, p1

    move v3, v6

    :goto_0
    if-lt v3, v2, :cond_0

    .line 126
    return-object v1

    .line 119
    :cond_0
    aget-object v0, p1, v3

    .line 120
    .local v0, app:Ljava/lang/String;
    const-string v4, "music"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    aput-boolean v5, v1, v6

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_2
    const-string v4, "radio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aput-boolean v5, v1, v5

    goto :goto_1

    .line 122
    :cond_3
    const-string v4, "video"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    aput-boolean v5, v1, v4

    goto :goto_1

    .line 123
    :cond_4
    const-string v4, "game"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    aput-boolean v5, v1, v4

    goto :goto_1

    .line 124
    :cond_5
    const-string v4, "news"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    aput-boolean v5, v1, v4

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {}, Lcom/aws/mycloud/view/MyCloudActivity;->access$0()Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v4}, Lcom/aws/mycloud/view/MyCloudActivity;->access$1(Lcom/aws/mycloud/view/MyCloudActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    const-string v3, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 90
    .local v2, success:Z
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 92
    .local v1, mainStringList:[Ljava/lang/String;
    :try_start_2
    const-string v3, "com.asus.vibe.MAINLIST_RESULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 94
    array-length v3, v1

    if-lez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-direct {p0, v1}, Lcom/aws/mycloud/view/MyCloudActivity$2;->sortVibeApps([Ljava/lang/String;)[Z

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->showVibeApps([Z)V

    .line 115
    :goto_2
    return-void

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const v4, 0x7f060053

    invoke-virtual {v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const v4, 0x7f06005e

    invoke-virtual {v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 109
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 113
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v3}, Lcom/aws/mycloud/view/MyCloudActivity;->access$2(Lcom/aws/mycloud/view/MyCloudActivity;)V

    goto :goto_2

    .line 106
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$2;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v3}, Lcom/aws/mycloud/view/MyCloudActivity;->access$2(Lcom/aws/mycloud/view/MyCloudActivity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 87
    .end local v1           #mainStringList:[Ljava/lang/String;
    .end local v2           #success:Z
    :catch_1
    move-exception v3

    goto :goto_1

    .line 84
    :catch_2
    move-exception v3

    goto :goto_0
.end method
