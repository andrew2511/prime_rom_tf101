.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Launcher"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mIntent:Landroid/app/PendingIntent;

    .line 1035
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mPkg:Ljava/lang/String;

    .line 1036
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mTag:Ljava/lang/String;

    .line 1037
    iput p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mId:I

    .line 1038
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1046
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1050
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 1051
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 1052
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1053
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1054
    .local v1, overlay:Landroid/content/Intent;
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v6

    aget v5, v2, v8

    aget v6, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1057
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1065
    .end local v1           #overlay:Landroid/content/Intent;
    .end local v2           #pos:[I
    :cond_0
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->mId:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1071
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 1074
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$Launcher;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 1075
    return-void

    .line 1058
    .restart local v1       #overlay:Landroid/content/Intent;
    .restart local v2       #pos:[I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1060
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending contentIntent failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1066
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v1           #overlay:Landroid/content/Intent;
    .end local v2           #pos:[I
    :catch_1
    move-exception v3

    goto :goto_2

    .line 1047
    :catch_2
    move-exception v3

    goto :goto_0
.end method
