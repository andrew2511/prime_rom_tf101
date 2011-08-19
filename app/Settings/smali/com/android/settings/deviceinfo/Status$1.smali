.class Lcom/android/settings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    const-string v6, "level"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, level:I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 162
    .local v3, scale:I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/Status;->access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, v1, 0x64

    div-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, plugType:I
    const-string v6, "status"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 167
    .local v4, status:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 168
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v7, 0x7f080062

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, statusString:Ljava/lang/String;
    if-lez v2, :cond_0

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    if-ne v2, v10, :cond_2

    const v8, 0x7f080063

    :goto_0
    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/Status;->access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    .end local v1           #level:I
    .end local v2           #plugType:I
    .end local v3           #scale:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_1
    return-void

    .line 170
    .restart local v1       #level:I
    .restart local v2       #plugType:I
    .restart local v3       #scale:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_2
    const v8, 0x7f080064

    goto :goto_0

    .line 175
    .end local v5           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 176
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v7, 0x7f080065

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v5           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    .line 178
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v7, 0x7f080066

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 179
    .end local v5           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 180
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v7, 0x7f080067

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v5           #statusString:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v7, 0x7f080061

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1
.end method
