.class public Lcom/layar/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;
.implements Lcom/layar/ui/navigationbar/NavigationItems;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ActivityHelper$LayarActivityEvents;
    }
.end annotation


# static fields
.field private static final EXTRAS_SELECTED_NAV_BUTTON:Ljava/lang/String; = "navigationbar:selected"

.field private static final MAIN_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final RESULT_GOTO_MAIN:I = 0x64

.field private static final SUBACTIVITY_LOGIN_BEFORE:I = 0x3e8

.field private static final SUBACTIVITY_NAVIGATION_BAR:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

.field private final mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

.field private mUserManager:Lcom/layar/data/user/UserManager;

.field private viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ActivityHelper;->TAG:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/layar/MyLayersActivity;

    sput-object v0, Lcom/layar/ActivityHelper;->MAIN_CLASS:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    .line 57
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/layar/ActivityHelper$LayarActivityEvents;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/layar/ActivityHelper$LayarActivityEvents;

    iput-object v0, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    iput-object v0, p0, Lcom/layar/ActivityHelper;->mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    .line 64
    :goto_1
    return-void

    .line 60
    :cond_0
    iput-object v1, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    goto :goto_0

    .line 63
    :cond_1
    iput-object v1, p0, Lcom/layar/ActivityHelper;->mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    goto :goto_1
.end method

.method private _isThis(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, startClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 560
    sget-object v0, Lcom/layar/ActivityHelper;->MAIN_CLASS:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 566
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 567
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/layar/util/Util;->disableTransitions(Landroid/app/Activity;)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0, p1}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private _startActivity(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, startClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v0, Lcom/layar/ActivityHelper;->MAIN_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 556
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/layar/ActivityHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ActivityHelper;)Lcom/layar/ActivityHelper$LayarActivityEvents;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    return-object v0
.end method

.method public static checkLocationAvailable(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 452
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 453
    .local v0, locationMgr:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {p0}, Lcom/layar/ActivityHelper;->showGPSDisabled(Landroid/content/Context;)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 458
    const v2, 0x7f090092

    const/4 v3, 0x0

    .line 457
    invoke-static {v1, v2, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0
.end method

.method public static downloadErrorHandling(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "errorCode"

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/layar/ActivityHelper;->downloadErrorHandling(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static downloadErrorHandling(Landroid/content/Context;IZ)Z
    .locals 3
    .parameter "context"
    .parameter "errorCode"
    .parameter "newTask"

    .prologue
    const/4 v2, 0x1

    .line 395
    sparse-switch p1, :sswitch_data_0

    .line 428
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 399
    :sswitch_0
    invoke-static {p0, p2}, Lcom/layar/ActivityHelper;->manualLogin(Landroid/content/Context;Z)V

    move v1, v2

    .line 400
    goto :goto_0

    .line 402
    :sswitch_1
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    .line 403
    .local v0, uMan:Lcom/layar/data/user/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 404
    invoke-static {p0}, Lcom/layar/ActivityHelper;->loginStaticHandler(Landroid/content/Context;)Lcom/layar/data/user/UserManager$LoginHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    move v1, v2

    .line 405
    goto :goto_0

    .line 407
    .end local v0           #uMan:Lcom/layar/data/user/UserManager;
    :sswitch_2
    new-instance v1, Lcom/layar/ActivityHelper$16;

    invoke-direct {v1, p0}, Lcom/layar/ActivityHelper$16;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 415
    goto :goto_0

    .line 418
    :sswitch_3
    new-instance v1, Lcom/layar/ActivityHelper$17;

    invoke-direct {v1, p0}, Lcom/layar/ActivityHelper$17;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 426
    goto :goto_0

    .line 395
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_3
        0x2a -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static loginStaticHandler(Landroid/content/Context;)Lcom/layar/data/user/UserManager$LoginHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    new-instance v0, Lcom/layar/ActivityHelper$2;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper$2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected static manualLogin(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "newTask"

    .prologue
    .line 149
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    .line 150
    .local v0, uManager:Lcom/layar/data/user/UserManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/layar/data/user/UserManager;->setPassword(Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/layar/data/user/UserManager;->setOtherPhone(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->clientLogout()V

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/layar/UserLoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v1, userIntent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method private setCurrentlySelectedButton(Lcom/layar/ui/navigationbar/NavigationBar;)V
    .locals 4
    .parameter "bar"

    .prologue
    .line 499
    const-class v1, Lcom/layar/MyLayersActivity;

    invoke-direct {p0, v1}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const-class v1, Lcom/layar/RecentActivity;

    invoke-direct {p0, v1}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    goto :goto_0

    .line 503
    :cond_2
    const-class v1, Lcom/layar/GalleryActivity;

    invoke-direct {p0, v1}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    goto :goto_0

    .line 505
    :cond_3
    const-class v1, Lcom/layar/MainSettingsActivity;

    invoke-direct {p0, v1}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    goto :goto_0

    .line 507
    :cond_4
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "navigationbar:selected"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "navigationbar:selected"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 509
    .local v0, id:I
    invoke-virtual {p1, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    goto :goto_0
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 296
    new-instance v0, Lcom/layar/ActivityHelper$10;

    invoke-direct {v0}, Lcom/layar/ActivityHelper$10;-><init>()V

    invoke-static {p0, v0}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "clickListner"

    .prologue
    .line 303
    new-instance v0, Lcom/layar/ActivityHelper$11;

    invoke-direct {v0, p0, p1}, Lcom/layar/ActivityHelper$11;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public static showGPSDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 432
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 434
    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 435
    const v2, 0x7f09001c

    new-instance v3, Lcom/layar/ActivityHelper$18;

    invoke-direct {v3, p0}, Lcom/layar/ActivityHelper$18;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 442
    const v2, 0x7f09001d

    new-instance v3, Lcom/layar/ActivityHelper$19;

    invoke-direct {v3}, Lcom/layar/ActivityHelper$19;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 448
    return-void
.end method


# virtual methods
.method public downloadErrorHandling(IZIZ)Z
    .locals 3
    .parameter "errorCode"
    .parameter "finishOnError"
    .parameter "loginMessageId"
    .parameter "showLoginPage"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 317
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 387
    :goto_0
    return v0

    .line 321
    :sswitch_0
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/layar/ActivityHelper;->manualLogin(Landroid/content/Context;Z)V

    .line 322
    if-eqz p2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    move v0, v2

    .line 324
    goto :goto_0

    .line 326
    :sswitch_1
    if-lez p3, :cond_1

    .line 327
    if-eqz p4, :cond_2

    .line 328
    invoke-virtual {p0, p3, p2}, Lcom/layar/ActivityHelper;->showLoginPromtDialog(IZ)V

    :cond_1
    :goto_1
    move v0, v2

    .line 338
    goto :goto_0

    .line 330
    :cond_2
    new-instance v0, Lcom/layar/ActivityHelper$12;

    invoke-direct {v0, p0, p3}, Lcom/layar/ActivityHelper$12;-><init>(Lcom/layar/ActivityHelper;I)V

    invoke-static {v0}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 340
    :sswitch_2
    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    move v0, v2

    .line 342
    goto :goto_0

    .line 344
    :sswitch_3
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->checkLocationAvailable(Landroid/content/Context;)V

    move v0, v2

    .line 345
    goto :goto_0

    .line 347
    :sswitch_4
    new-instance v0, Lcom/layar/ActivityHelper$13;

    invoke-direct {v0, p0, p2}, Lcom/layar/ActivityHelper$13;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-static {v0}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    .line 357
    goto :goto_0

    .line 359
    :sswitch_5
    new-instance v0, Lcom/layar/ActivityHelper$14;

    invoke-direct {v0, p0, p2}, Lcom/layar/ActivityHelper$14;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-static {v0}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    .line 369
    goto :goto_0

    .line 372
    :sswitch_6
    new-instance v0, Lcom/layar/ActivityHelper$15;

    invoke-direct {v0, p0, p2}, Lcom/layar/ActivityHelper$15;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-static {v0}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    .line 382
    goto :goto_0

    .line 384
    :sswitch_7
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;)V

    move v0, v2

    .line 385
    goto :goto_0

    .line 317
    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_5
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_6
        -0x1 -> :sswitch_6
        0x1e -> :sswitch_1
        0x2a -> :sswitch_0
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x38f -> :sswitch_7
    .end sparse-switch
.end method

.method public getUserManager()Lcom/layar/data/user/UserManager;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mUserManager:Lcom/layar/data/user/UserManager;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/layar/data/user/UserManager;

    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/ActivityHelper;->mUserManager:Lcom/layar/data/user/UserManager;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mUserManager:Lcom/layar/data/user/UserManager;

    return-object v0
.end method

.method public gotoMain()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 189
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 190
    return-void
.end method

.method public handleResponse(Lcom/layar/data/Response;)Z
    .locals 1
    .parameter "response"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;Z)Z

    move-result v0

    return v0
.end method

.method public handleResponse(Lcom/layar/data/Response;Z)Z
    .locals 1
    .parameter "response"
    .parameter "finishOnError"

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;ZIZ)Z

    move-result v0

    return v0
.end method

.method public handleResponse(Lcom/layar/data/Response;ZIZ)Z
    .locals 4
    .parameter "response"
    .parameter "finishOnError"
    .parameter "loginMessageId"
    .parameter "showLoginPage"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 214
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 292
    :goto_0
    return v1

    .line 216
    :cond_0
    if-nez p1, :cond_2

    .line 217
    if-eqz p2, :cond_1

    .line 218
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    move v1, v3

    .line 219
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v0

    .line 222
    .local v0, responseCode:I
    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_1
    move v1, v2

    .line 292
    goto :goto_0

    .line 226
    :sswitch_0
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/layar/ActivityHelper;->manualLogin(Landroid/content/Context;Z)V

    .line 227
    if-eqz p2, :cond_3

    .line 228
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 231
    :sswitch_1
    if-lez p3, :cond_4

    .line 232
    if-eqz p4, :cond_5

    .line 233
    invoke-virtual {p0, p3, p2}, Lcom/layar/ActivityHelper;->showLoginPromtDialog(IZ)V

    :cond_4
    :goto_2
    move v1, v3

    .line 243
    goto :goto_0

    .line 235
    :cond_5
    new-instance v1, Lcom/layar/ActivityHelper$6;

    invoke-direct {v1, p0, p3}, Lcom/layar/ActivityHelper$6;-><init>(Lcom/layar/ActivityHelper;I)V

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 245
    :sswitch_2
    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    move v1, v3

    .line 247
    goto :goto_0

    .line 249
    :sswitch_3
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/layar/ActivityHelper;->checkLocationAvailable(Landroid/content/Context;)V

    move v1, v3

    .line 250
    goto :goto_0

    .line 252
    :sswitch_4
    new-instance v1, Lcom/layar/ActivityHelper$7;

    invoke-direct {v1, p0, p2}, Lcom/layar/ActivityHelper$7;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v3

    .line 262
    goto :goto_0

    .line 265
    :sswitch_5
    new-instance v1, Lcom/layar/ActivityHelper$8;

    invoke-direct {v1, p0, p2}, Lcom/layar/ActivityHelper$8;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v3

    .line 275
    goto :goto_0

    .line 277
    :sswitch_6
    new-instance v1, Lcom/layar/ActivityHelper$9;

    invoke-direct {v1, p0, p2}, Lcom/layar/ActivityHelper$9;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v3

    .line 287
    goto :goto_0

    .line 289
    :sswitch_7
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;)V

    move v1, v3

    .line 290
    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_6
        -0x2 -> :sswitch_5
        -0x1 -> :sswitch_5
        0x1e -> :sswitch_1
        0x2a -> :sswitch_0
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x38f -> :sswitch_7
    .end sparse-switch
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    .line 201
    .local v0, userManager:Lcom/layar/data/user/UserManager;
    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/layar/ActivityHelper$1;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper$1;-><init>(Lcom/layar/ActivityHelper;)V

    return-object v0
.end method

.method protected loginPrompt(I)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/layar/UserWelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, userIntent:Landroid/content/Intent;
    if-lez p1, :cond_1

    .line 144
    const-string v1, "headerTextId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v1, 0x64

    .line 165
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/layar/ActivityHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    invoke-interface {v0}, Lcom/layar/ActivityHelper$LayarActivityEvents;->onLoggedIn()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mEventHandler:Lcom/layar/ActivityHelper$LayarActivityEvents;

    invoke-interface {v0}, Lcom/layar/ActivityHelper$LayarActivityEvents;->onCancelLogin()V

    goto :goto_0

    .line 175
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 177
    if-ne p2, v1, :cond_3

    sget-object v0, Lcom/layar/ActivityHelper;->MAIN_CLASS:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_isThis(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 182
    :cond_3
    if-eqz p3, :cond_0

    .line 183
    invoke-virtual {p0, p3}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 68
    return-void
.end method

.method public onNavigationBarButtonClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z
    .locals 2
    .parameter "bar"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 515
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    invoke-interface {v0, p1, p2}, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;->onNavigationBarButtonClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 533
    :goto_0
    return v0

    .line 519
    :cond_0
    sparse-switch p2, :sswitch_data_0

    :goto_1
    move v0, v1

    .line 533
    goto :goto_0

    .line 521
    :sswitch_0
    const-class v0, Lcom/layar/MyLayersActivity;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 524
    :sswitch_1
    const-class v0, Lcom/layar/RecentActivity;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 527
    :sswitch_2
    const-class v0, Lcom/layar/GalleryActivity;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 530
    :sswitch_3
    const-class v0, Lcom/layar/MainSettingsActivity;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 519
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNavigationBarPopupMenuClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z
    .locals 1
    .parameter "bar"
    .parameter "id"

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareNavigationBar(Lcom/layar/ui/navigationbar/NavigationBar;)Z
    .locals 4
    .parameter "bar"

    .prologue
    const/4 v3, 0x1

    .line 483
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mNavigationBarHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    invoke-interface {v0, p1}, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;->onPrepareNavigationBar(Lcom/layar/ui/navigationbar/NavigationBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 495
    :goto_0
    return v0

    .line 490
    :cond_0
    const/16 v0, 0xa

    const v1, 0x7f0200e0

    const v2, 0x7f090081

    invoke-virtual {p1, v0, v1, v2}, Lcom/layar/ui/navigationbar/NavigationBar;->addButton(III)V

    .line 491
    const/16 v0, 0x14

    const v1, 0x7f0200f0

    const v2, 0x7f090082

    invoke-virtual {p1, v0, v1, v2}, Lcom/layar/ui/navigationbar/NavigationBar;->addButton(III)V

    .line 492
    const/16 v0, 0x1e

    const v1, 0x7f0200dc

    const v2, 0x7f090083

    invoke-virtual {p1, v0, v1, v2}, Lcom/layar/ui/navigationbar/NavigationBar;->addButton(III)V

    .line 493
    const/16 v0, 0x28

    const v1, 0x7f0200f4

    const v2, 0x7f090084

    invoke-virtual {p1, v0, v1, v2}, Lcom/layar/ui/navigationbar/NavigationBar;->addButton(III)V

    .line 494
    invoke-direct {p0, p1}, Lcom/layar/ActivityHelper;->setCurrentlySelectedButton(Lcom/layar/ui/navigationbar/NavigationBar;)V

    move v0, v3

    .line 495
    goto :goto_0
.end method

.method public onPrepareNavigationBarPopupMenu(Lcom/layar/ui/navigationbar/NavigationBar;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Z
    .locals 1
    .parameter "bar"
    .parameter "menu"

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public search(Z)V
    .locals 1
    .parameter "goBackToStreamAsResult"

    .prologue
    .line 478
    const-class v0, Lcom/layar/SearchLayersActivity;

    invoke-direct {p0, v0}, Lcom/layar/ActivityHelper;->_startActivity(Ljava/lang/Class;)V

    .line 479
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .parameter "layoutResID"

    .prologue
    .line 463
    iget-object v2, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 464
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03003a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 465
    .local v1, root:Landroid/view/View;
    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/layar/ui/navigationbar/NavigationBar;

    iput-object v2, p0, Lcom/layar/ActivityHelper;->viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;

    .line 466
    iget-object v2, p0, Lcom/layar/ActivityHelper;->viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;

    invoke-virtual {v2, p0}, Lcom/layar/ui/navigationbar/NavigationBar;->setNavigationBarHandler(Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;)V

    .line 467
    iget-object v2, p0, Lcom/layar/ActivityHelper;->viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;

    iget-object v3, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/layar/ui/navigationbar/NavigationBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 470
    iget-object v2, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 471
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/layar/ActivityHelper;->viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;

    invoke-virtual {v0, p1}, Lcom/layar/ui/navigationbar/NavigationBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method protected showLoginPromtDialog(IZ)V
    .locals 4
    .parameter "messageId"
    .parameter "finishOnCancel"

    .prologue
    const v3, 0x7f09010c

    .line 113
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v1, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    .line 114
    if-lez p1, :cond_0

    move v2, p1

    .line 113
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 115
    invoke-virtual {v0, v3}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/layar/ActivityHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/layar/ActivityHelper$3;-><init>(Lcom/layar/ActivityHelper;I)V

    invoke-virtual {v0, v3, v1}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 122
    const v1, 0x7f090019

    new-instance v2, Lcom/layar/ActivityHelper$4;

    invoke-direct {v2, p0, p2}, Lcom/layar/ActivityHelper$4;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/layar/ActivityHelper$5;

    invoke-direct {v1, p0, p2}, Lcom/layar/ActivityHelper$5;-><init>(Lcom/layar/ActivityHelper;Z)V

    invoke-virtual {v0, v1}, Lcom/layar/ui/SmartDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    .line 137
    return-void

    .line 114
    :cond_0
    const v2, 0x7f090174

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 574
    sget-boolean v0, Lcom/layar/util/MyConfig;->SDK5Plus:Z

    if-eqz v0, :cond_0

    .line 575
    const/high16 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/layar/ActivityHelper;->viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;

    if-eqz v0, :cond_1

    .line 577
    const-string v0, "navigationbar:selected"

    iget-object v1, p0, Lcom/layar/ActivityHelper;->viewNavigationBar:Lcom/layar/ui/navigationbar/NavigationBar;

    invoke-virtual {v1}, Lcom/layar/ui/navigationbar/NavigationBar;->getSelectedId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 582
    iget-object v0, p0, Lcom/layar/ActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/layar/util/Util;->disableTransitions(Landroid/app/Activity;)V

    .line 583
    return-void
.end method
