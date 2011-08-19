.class public Lcom/asus/webstorage/id/TestAP;
.super Landroid/app/Activity;
.source "TestAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/webstorage/id/TestAP$mMyCloudReceiver;
    }
.end annotation


# instance fields
.field private mReceiver:Lcom/asus/webstorage/id/TestAP$mMyCloudReceiver;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    .line 14
    return-void
.end method

.method private composeAccInfo(Ljava/lang/String;ILandroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 87
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 88
    const-string v1, "AccountInfo"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    .local v0, accinfo:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " OK\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string v2, "\n---------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-static {v0}, Lnet/yostore/utility/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .end local v0           #accinfo:[B
    :goto_0
    return-object v1

    .line 96
    .restart local v0       #accinfo:[B
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " OK\n But no data!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    .end local v0           #accinfo:[B
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private renewAccountInfo([B)V
    .locals 4
    .parameter "accinfo"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v2, "\n---------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    invoke-static {p1}, Lnet/yostore/utility/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method


# virtual methods
.method public getInfo(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "Application"

    const-string v2, "TestAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "AccountInfo"

    const-string v2, "getInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/webstorage/id/TestAP;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    return-void
.end method

.method public getInfoNoCallback(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "Application"

    const-string v2, "TestAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "AccountInfo"

    const-string v2, "getInfoNoCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/asus/webstorage/id/TestAP;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method

.method public logout(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "Application"

    const-string v2, "TestAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "AccountInfo"

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/asus/webstorage/id/TestAP;->startActivityForResult(Landroid/content/Intent;I)V

    .line 58
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    const-string v1, "getInfo"

    invoke-direct {p0, v1, p2, p3}, Lcom/asus/webstorage/id/TestAP;->composeAccInfo(Ljava/lang/String;ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    const-string v1, "renewToken"

    invoke-direct {p0, v1, p2, p3}, Lcom/asus/webstorage/id/TestAP;->composeAccInfo(Ljava/lang/String;ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    const-string v1, "getInfoNoCallback"

    invoke-direct {p0, v1, p2, p3}, Lcom/asus/webstorage/id/TestAP;->composeAccInfo(Ljava/lang/String;ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    const-string v1, "logout OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    const-string v1, "logout CANCELED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/asus/webstorage/id/TestAP;->setContentView(I)V

    .line 24
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/asus/webstorage/id/TestAP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/webstorage/id/TestAP;->tv:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.asus.webstorage.id"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, mFilter01:Landroid/content/IntentFilter;
    new-instance v2, Lcom/asus/webstorage/id/TestAP$mMyCloudReceiver;

    invoke-direct {v2, p0}, Lcom/asus/webstorage/id/TestAP$mMyCloudReceiver;-><init>(Lcom/asus/webstorage/id/TestAP;)V

    iput-object v2, p0, Lcom/asus/webstorage/id/TestAP;->mReceiver:Lcom/asus/webstorage/id/TestAP$mMyCloudReceiver;

    .line 114
    iget-object v2, p0, Lcom/asus/webstorage/id/TestAP;->mReceiver:Lcom/asus/webstorage/id/TestAP$mMyCloudReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/asus/webstorage/id/TestAP;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #mFilter01:Landroid/content/IntentFilter;
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    return-void

    .line 116
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public renewToken(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "Application"

    const-string v2, "TestAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "AccountInfo"

    const-string v2, "renewToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/asus/webstorage/id/TestAP;->startActivityForResult(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method
