.class public Lcom/layar/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;


# static fields
.field public static final RESULT_CLOSE_AR:I = 0x1

.field private static final SUBACTIVITY_3D_ACTIVITY:I = 0x200

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isInit:Z

.field private paused:Z

.field private preview:Lcom/layar/Layar3DActivity$Preview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/layar/CameraActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/CameraActivity;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/layar/CameraActivity;->isInit:Z

    .line 34
    iput-boolean v0, p0, Lcom/layar/CameraActivity;->paused:Z

    .line 23
    return-void
.end method

.method private startOpenGlView()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/layar/CameraActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    sput-object v1, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/OneLayer3DActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/layar/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 112
    const-string v1, "AR:resume"

    iget-boolean v2, p0, Lcom/layar/CameraActivity;->paused:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const/16 v1, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/layar/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layar/CameraActivity;->isInit:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/CameraActivity;->paused:Z

    .line 116
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    .line 96
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/CameraActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 98
    invoke-virtual {p0}, Lcom/layar/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/layar/CameraActivity;->finish()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/CameraActivity;->isInit:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/layar/util/MyConfig;->getSdkVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 40
    new-instance v0, Lcom/layar/Layar3DActivity$Preview;

    invoke-direct {v0, p0, p0}, Lcom/layar/Layar3DActivity$Preview;-><init>(Landroid/content/Context;Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;)V

    iput-object v0, p0, Lcom/layar/CameraActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 41
    iget-object v0, p0, Lcom/layar/CameraActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    invoke-virtual {p0, v0}, Lcom/layar/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/layar/CameraActivity;->finishActivity(I)V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 85
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/layar/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/layar/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/CameraActivity;->paused:Z

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    return-void
.end method

.method public onPreviewFall()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder;

    invoke-direct {v0, p0}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, dialog:Lcom/layar/ui/SmartDialog$Builder;
    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    .line 122
    const v1, 0x7f090016

    new-instance v2, Lcom/layar/CameraActivity$1;

    invoke-direct {v2, p0}, Lcom/layar/CameraActivity$1;-><init>(Lcom/layar/CameraActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    .line 132
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    .line 133
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/CameraActivity;->isInit:Z

    .line 75
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 48
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/layar/CameraActivity;->isInit:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/layar/CameraActivity;->startOpenGlView()V

    .line 50
    :cond_0
    return-void
.end method
