.class Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;
.super Ljava/lang/Object;
.source "UiHoneycombUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionModeCallbackInvocationHandler"
.end annotation


# instance fields
.field private m_oCallback:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;)V
    .locals 0
    .parameter "a_oCallback"

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;->m_oCallback:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;

    .line 278
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "object"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, methodName:Ljava/lang/String;
    const-string v1, "onActionItemClicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;->m_oCallback:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;

    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;

    aget-object v3, p3, v3

    invoke-direct {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;-><init>(Ljava/lang/Object;)V

    aget-object p0, p3, v4

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    invoke-interface {v1, v2, p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;->onActionItemClicked(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 293
    :goto_0
    return-object v1

    .line 285
    .restart local p0
    :cond_0
    const-string v1, "onCreateActionMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;->m_oCallback:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;

    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;

    aget-object v3, p3, v3

    invoke-direct {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;-><init>(Ljava/lang/Object;)V

    aget-object p0, p3, v4

    .end local p0
    check-cast p0, Landroid/view/Menu;

    invoke-interface {v1, v2, p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;->onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 288
    .restart local p0
    :cond_1
    const-string v1, "onDestroyActionMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;->m_oCallback:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;

    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;

    aget-object v3, p3, v3

    invoke-direct {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;->onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V

    .line 290
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "onPrepareActionMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionModeCallbackInvocationHandler;->m_oCallback:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;

    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;

    aget-object v3, p3, v3

    invoke-direct {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;-><init>(Ljava/lang/Object;)V

    aget-object p0, p3, v4

    .end local p0
    check-cast p0, Landroid/view/Menu;

    invoke-interface {v1, v2, p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;->onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 296
    .restart local p0
    :cond_3
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
