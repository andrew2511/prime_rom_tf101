.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 109
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v2, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 110
    .local v2, oldBatteryLevel:I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v10, "level"

    const/16 v11, 0x64

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 111
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v9, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 112
    .local v3, oldBatteryStatus:I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v10, "status"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 114
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v9, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 115
    .local v6, oldPlugType:I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v10, "plugged"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 116
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v5, v9, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 117
    .local v5, oldInvalidCharger:I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v10, "invalid_charger"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 119
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    move v8, v9

    .line 120
    .local v8, plugged:Z
    :goto_0
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    move v7, v9

    .line 122
    .local v7, oldPlugged:Z
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9, v2}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 123
    .local v4, oldBucket:I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v1

    .line 137
    .local v1, bucket:I
    if-nez v5, :cond_3

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-eqz v9, :cond_3

    .line 138
    const-string v9, "PowerUI"

    const-string v10, "showing invalid charger warning"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    .line 164
    .end local v1           #bucket:I
    .end local v2           #oldBatteryLevel:I
    .end local v3           #oldBatteryStatus:I
    .end local v4           #oldBucket:I
    .end local v5           #oldInvalidCharger:I
    .end local v6           #oldPlugType:I
    .end local v7           #oldPlugged:Z
    .end local v8           #plugged:Z
    :cond_0
    :goto_2
    return-void

    .line 119
    .restart local v2       #oldBatteryLevel:I
    .restart local v3       #oldBatteryStatus:I
    .restart local v5       #oldInvalidCharger:I
    .restart local v6       #oldPlugType:I
    :cond_1
    const/4 v9, 0x0

    move v8, v9

    goto :goto_0

    .line 120
    .restart local v8       #plugged:Z
    :cond_2
    const/4 v9, 0x0

    move v7, v9

    goto :goto_1

    .line 141
    .restart local v1       #bucket:I
    .restart local v4       #oldBucket:I
    .restart local v7       #oldPlugged:Z
    :cond_3
    if-eqz v5, :cond_6

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-nez v9, :cond_6

    .line 142
    const-string v9, "PowerUI"

    const-string v10, "closing invalid charger warning"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 149
    :cond_4
    if-nez v8, :cond_7

    if-lt v1, v4, :cond_5

    if-eqz v7, :cond_7

    :cond_5
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    if-gez v1, :cond_7

    .line 153
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showing low battery warning: level="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto :goto_2

    .line 144
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_4

    goto :goto_2

    .line 155
    :cond_7
    if-nez v8, :cond_8

    if-le v1, v4, :cond_9

    if-lez v1, :cond_9

    .line 156
    :cond_8
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "closing low battery warning: level="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto :goto_2

    .line 158
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 159
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_2

    .line 162
    .end local v1           #bucket:I
    .end local v2           #oldBatteryLevel:I
    .end local v3           #oldBatteryStatus:I
    .end local v4           #oldBucket:I
    .end local v5           #oldInvalidCharger:I
    .end local v6           #oldPlugType:I
    .end local v7           #oldPlugged:Z
    .end local v8           #plugged:Z
    :cond_a
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
