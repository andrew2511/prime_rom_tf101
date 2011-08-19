.class public Lcom/android/videoeditor/ProjectsActivity;
.super Landroid/app/Activity;
.source "ProjectsActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/ProjectsActivity$ServiceListener;
    }
.end annotation


# static fields
.field private static final DIALOG_NEW_PROJECT_ID:I = 0x1

.field private static final DIALOG_REMOVE_PROJECT_ID:I = 0x2

.field private static final MENU_NEW_PROJECT_ID:I = 0x1

.field public static final PARAM_CREATE_PROJECT_NAME:Ljava/lang/String; = "name"

.field private static final PARAM_DIALOG_PATH_ID:Ljava/lang/String; = "path"

.field public static final PARAM_OPEN_PROJECT_PATH:Ljava/lang/String; = "path"

.field private static final REQUEST_CODE_CREATE_PROJECT:I = 0x2

.field private static final REQUEST_CODE_OPEN_PROJECT:I = 0x1


# instance fields
.field private mCarouselView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

.field private mHelper:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

.field private final mServiceListener:Lcom/android/videoeditor/ProjectsActivity$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/videoeditor/ProjectsActivity$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/ProjectsActivity$ServiceListener;-><init>(Lcom/android/videoeditor/ProjectsActivity;Lcom/android/videoeditor/ProjectsActivity$1;)V

    iput-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mServiceListener:Lcom/android/videoeditor/ProjectsActivity$ServiceListener;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/videoeditor/ProjectsActivity;)Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mHelper:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/videoeditor/ProjectsActivity;->createProject(Ljava/lang/String;)V

    return-void
.end method

.method private createProject(Ljava/lang/String;)V
    .locals 5
    .parameter "projectName"

    .prologue
    .line 297
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v1, extra:Landroid/content/Intent;
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-static {p0}, Lcom/android/videoeditor/util/FileUtils;->createNewProjectPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, projectPath:Ljava/lang/String;
    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/videoeditor/ProjectsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1           #extra:Landroid/content/Intent;
    .end local v2           #projectPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 304
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const v3, 0x7f09002e

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private openProject(Ljava/lang/String;)V
    .locals 2
    .parameter "projectPath"

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v0, extra:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void
.end method


# virtual methods
.method public onCarouselItemLongPress(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .parameter "projectPath"
    .parameter "anchorView"

    .prologue
    .line 264
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 265
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 267
    new-instance v1, Lcom/android/videoeditor/ProjectsActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/android/videoeditor/ProjectsActivity$7;-><init>(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 288
    return-void
.end method

.method public onCarouselItemTap(Ljava/lang/String;)V
    .locals 1
    .parameter "projectPath"

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/videoeditor/ProjectsActivity;->openProject(Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/ProjectsActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/videoeditor/ProjectsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 99
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/ProjectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    iput-object v1, p0, Lcom/android/videoeditor/ProjectsActivity;->mCarouselView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    .line 102
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity;->mCarouselView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 103
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity;->mCarouselView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/ProjectsCarouselView;->setZOrderOnTop(Z)V

    .line 105
    new-instance v1, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    iget-object v2, p0, Lcom/android/videoeditor/ProjectsActivity;->mCarouselView:Lcom/android/videoeditor/widgets/ProjectsCarouselView;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;-><init>(Landroid/content/Context;Lcom/android/videoeditor/widgets/ProjectsCarouselView;Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper$CarouselItemListener;)V

    iput-object v1, p0, Lcom/android/videoeditor/ProjectsActivity;->mHelper:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    .line 106
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 235
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/videoeditor/ProjectsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/ProjectsActivity$1;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/videoeditor/ProjectsActivity$2;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/ProjectsActivity$2;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    new-instance v7, Lcom/android/videoeditor/ProjectsActivity$3;

    invoke-direct {v7, p0}, Lcom/android/videoeditor/ProjectsActivity$3;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    const/4 v8, 0x0

    const/16 v9, 0x20

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;II)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_1
    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, projectPath:Ljava/lang/String;
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/ProjectsActivity$4;

    invoke-direct {v5, p0, v10}, Lcom/android/videoeditor/ProjectsActivity$4;-><init>(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V

    const v0, 0x7f09007f

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/ProjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/ProjectsActivity$5;

    invoke-direct {v7, p0}, Lcom/android/videoeditor/ProjectsActivity$5;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    new-instance v8, Lcom/android/videoeditor/ProjectsActivity$6;

    invoke-direct {v8, p0}, Lcom/android/videoeditor/ProjectsActivity$6;-><init>(Lcom/android/videoeditor/ProjectsActivity;)V

    const/4 v9, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    const v0, 0x7f090027

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 141
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(I)V

    move v0, v1

    .line 152
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mServiceListener:Lcom/android/videoeditor/ProjectsActivity$ServiceListener;

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->unregisterListener(Lcom/android/videoeditor/service/ApiService$ApiServiceListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mHelper:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->onPause()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mServiceListener:Lcom/android/videoeditor/ProjectsActivity$ServiceListener;

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->registerListener(Lcom/android/videoeditor/service/ApiService$ApiServiceListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity;->mHelper:Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/ProjectsCarouselViewHelper;->onResume()V

    .line 118
    invoke-static {p0}, Lcom/android/videoeditor/service/ApiService;->loadProjects(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method
