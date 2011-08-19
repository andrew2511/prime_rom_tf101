.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    .line 39
    const v1, 0x7f020061

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, state:I
    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 72
    .end local v3           #state:I
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 74
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 75
    .local v4, v:Landroid/widget/ImageView;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    if-eqz v5, :cond_4

    move v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #v:Landroid/widget/ImageView;
    .restart local v3       #state:I
    :cond_1
    move v5, v7

    .line 60
    goto :goto_0

    .line 61
    .end local v3           #state:I
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 64
    .restart local v3       #state:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 65
    const v5, 0x7f020062

    iput v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    goto :goto_1

    .line 67
    :cond_3
    const v5, 0x7f020061

    iput v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    goto :goto_1

    .line 76
    .end local v3           #state:I
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #v:Landroid/widget/ImageView;
    :cond_4
    const/16 v5, 0x8

    goto :goto_3

    .line 78
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_5
    return-void
.end method
