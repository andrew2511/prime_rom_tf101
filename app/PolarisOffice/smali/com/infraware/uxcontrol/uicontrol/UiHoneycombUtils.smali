.class public Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;
.super Ljava/lang/Object;
.source "UiHoneycombUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;,
        Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;,
        Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;,
        Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;
    }
.end annotation


# static fields
.field private static ActionModeCallbackInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I

.field public static final SHOW_AS_ACTION_ALWAYS:I

.field public static final SHOW_AS_ACTION_IF_ROOM:I

.field public static final SHOW_AS_ACTION_NEVER:I

.field public static final SHOW_AS_ACTION_WITH_TEXT:I

.field public static final homeActionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    :try_start_0
    const-string v2, "android.view.ActionMode$Callback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->ActionModeCallbackInterface:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 42
    :goto_0
    :try_start_1
    const-class v2, Landroid/R$id;

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 47
    .local v1, nInt:I
    :goto_1
    sput v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->homeActionId:I

    .line 50
    :try_start_2
    const-class v2, Landroid/content/pm/ActivityInfo;

    const-string v3, "SCREEN_ORIENTATION_SENSOR_LANDSCAPE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 56
    :goto_2
    sput v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I

    .line 59
    :try_start_3
    const-class v2, Landroid/view/MenuItem;

    const-string v3, "SHOW_AS_ACTION_IF_ROOM"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    .line 64
    :goto_3
    sput v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_IF_ROOM:I

    .line 67
    :try_start_4
    const-class v2, Landroid/view/MenuItem;

    const-string v3, "SHOW_AS_ACTION_ALWAYS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    .line 72
    :goto_4
    sput v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    .line 75
    :try_start_5
    const-class v2, Landroid/view/MenuItem;

    const-string v3, "SHOW_AS_ACTION_NEVER"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    .line 80
    :goto_5
    sput v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_NEVER:I

    .line 83
    :try_start_6
    const-class v2, Landroid/view/MenuItem;

    const-string v3, "SHOW_AS_ACTION_WITH_TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v1

    .line 88
    :goto_6
    sput v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    .line 22
    return-void

    .line 43
    .end local v1           #nInt:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 44
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #nInt:I
    goto :goto_1

    .line 52
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 53
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 61
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_3

    .line 68
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 69
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 77
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5

    .line 84
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 85
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6

    .line 36
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #nInt:I
    :catch_6
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyEventEx(Landroid/view/KeyEvent;)Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    .locals 2
    .parameter "a_oEvent"

    .prologue
    .line 602
    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;

    invoke-direct {v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;-><init>()V

    .line 603
    .local v1, utils:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;Landroid/view/KeyEvent;)V

    .line 604
    .local v0, eventEx:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    return-object v0
.end method

.method public static hideActionIfPossible(Landroid/view/Menu;I)V
    .locals 1
    .parameter "a_oMenu"
    .parameter "a_nMenuItemId"

    .prologue
    .line 361
    if-nez p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 365
    .local v0, oItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 366
    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->hideActionIfPossible(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public static hideActionIfPossible(Landroid/view/MenuItem;)V
    .locals 8
    .parameter "a_oItem"

    .prologue
    .line 374
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setShowAsAction"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 379
    .local v2, setShowAsActionMethod:Ljava/lang/reflect/Method;
    const-class v3, Landroid/view/MenuItem;

    const-string v4, "SHOW_AS_ACTION_NEVER"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 381
    .local v0, SHOW_AS_ACTION_NEVER:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v0           #SHOW_AS_ACTION_NEVER:Ljava/lang/reflect/Field;
    .end local v2           #setShowAsActionMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 384
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V
    .locals 5
    .parameter "a_oActivity"

    .prologue
    .line 426
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    :goto_0
    return-void

    .line 430
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "invalidateOptionsMenu"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 431
    .local v1, invalidateOptionsMenuMethod:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v1           #invalidateOptionsMenuMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 434
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isHoneycombAvailable()Z
    .locals 3

    .prologue
    .line 308
    :try_start_0
    const-class v1, Landroid/os/Build$VERSION_CODES;

    const-string v2, "HONEYCOMB"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 311
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 313
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setActionViewIfPossible(Landroid/view/Menu;ILandroid/view/View;)V
    .locals 1
    .parameter "a_oMenu"
    .parameter "a_nMenuItemId"
    .parameter "a_oView"

    .prologue
    .line 397
    if-nez p0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 401
    .local v0, oItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 402
    invoke-static {v0, p2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setActionViewIfPossible(Landroid/view/MenuItem;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setActionViewIfPossible(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 6
    .parameter "a_oItem"
    .parameter "a_oView"

    .prologue
    .line 411
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setActionView"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 416
    .local v0, setActionViewMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v0           #setActionViewMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDisplayHomeAsUpEnabledIfPossible(Landroid/app/Activity;Z)V
    .locals 8
    .parameter "a_oActivity"
    .parameter "a_bShowHomeAsUp"

    .prologue
    .line 460
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    :try_start_0
    const-class v4, Landroid/app/Activity;

    const-string v5, "getActionBar"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 465
    .local v2, getActionBarMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 467
    .local v1, actionBar:Ljava/lang/Object;
    const-string v4, "android.app.ActionBar"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 468
    .local v0, ActionBarClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDisplayHomeAsUpEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 469
    .local v3, setDisplayHomeAsUpEnabledMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    .end local v0           #ActionBarClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #actionBar:Ljava/lang/Object;
    .end local v2           #getActionBarMethod:Ljava/lang/reflect/Method;
    .end local v3           #setDisplayHomeAsUpEnabledMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static setShowAsActionIfPossible(Landroid/view/Menu;II)V
    .locals 1
    .parameter "a_oMenu"
    .parameter "a_nMenuItemId"
    .parameter "a_nActionEnum"

    .prologue
    .line 325
    if-nez p0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 329
    .local v0, oItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 330
    invoke-static {v0, p2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public static setShowAsActionIfPossible(Landroid/view/MenuItem;I)V
    .locals 9
    .parameter "a_oItem"
    .parameter "a_nActionEnum"

    .prologue
    .line 338
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setShowAsAction"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 343
    .local v3, setShowAsActionMethod:Ljava/lang/reflect/Method;
    const-class v4, Landroid/view/MenuItem;

    const-string v5, "SHOW_AS_ACTION_IF_ROOM"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 344
    .local v0, SHOW_AS_ACTION_IF_ROOM:Ljava/lang/reflect/Field;
    const-class v4, Landroid/view/MenuItem;

    const-string v5, "SHOW_AS_ACTION_WITH_TEXT"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 346
    .local v1, SHOW_AS_ACTION_WITH_TEXT:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v0           #SHOW_AS_ACTION_IF_ROOM:Ljava/lang/reflect/Field;
    .end local v1           #SHOW_AS_ACTION_WITH_TEXT:Ljava/lang/reflect/Field;
    .end local v3           #setShowAsActionMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 349
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static startActionMode(Landroid/view/View;Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;)V
    .locals 7
    .parameter "a_oView"
    .parameter "a_oCallback"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 445
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->ActionModeCallbackInterface:Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->ActionModeCallbackInterface:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 450
    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->ActionModeCallbackInterface:Ljava/lang/Class;

    aput-object v4, v3, v5

    new-instance v4, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;

    invoke-direct {v4, p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;)V

    .line 448
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, callback:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "startActionMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->ActionModeCallbackInterface:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 455
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
