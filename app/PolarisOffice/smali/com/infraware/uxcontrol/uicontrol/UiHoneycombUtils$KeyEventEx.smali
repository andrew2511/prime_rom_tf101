.class public Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
.super Landroid/view/KeyEvent;
.source "UiHoneycombUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEventEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter
    .parameter "a_oEvent"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;

    .line 503
    invoke-direct {p0, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 504
    return-void
.end method


# virtual methods
.method public getMoveEndKeyCode()I
    .locals 3

    .prologue
    .line 550
    const/16 v0, 0x7f

    .line 551
    .local v0, nKeyCode:I
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$2()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 555
    :try_start_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$2()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 562
    :cond_0
    :goto_0
    return v0

    .line 557
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMoveHomeKeyCode()I
    .locals 3

    .prologue
    .line 533
    const/16 v0, 0x7e

    .line 534
    .local v0, nKeyCode:I
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$1()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    :try_start_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$1()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 540
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPageDownKeyCode()I
    .locals 3

    .prologue
    .line 584
    const/16 v0, 0x5d

    .line 585
    .local v0, nKeyCode:I
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$4()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    :try_start_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$4()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 591
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPageUpKeyCode()I
    .locals 3

    .prologue
    .line 567
    const/16 v0, 0x5c

    .line 568
    .local v0, nKeyCode:I
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$3()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 572
    :try_start_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$3()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 574
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCtrlPressedEx()Z
    .locals 5

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, bResult:Z
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$0()Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, 0x3000

    if-eqz v3, :cond_0

    .line 512
    const/4 v0, 0x1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->access$0()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 519
    .local v1, obj:Ljava/lang/Object;
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 520
    .local v2, objBoolean:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 522
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #objBoolean:Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
