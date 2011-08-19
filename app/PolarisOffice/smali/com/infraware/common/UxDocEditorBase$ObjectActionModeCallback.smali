.class abstract Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;
.super Ljava/lang/Object;
.source "UxDocEditorBase.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxDocEditorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ObjectActionModeCallback"
.end annotation


# instance fields
.field private m_bVisible:Z

.field private m_oMode:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->m_oMode:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;->finish()V

    .line 494
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->m_bVisible:Z

    return v0
.end method

.method public onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->m_oMode:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->m_bVisible:Z

    .line 486
    return-void
.end method

.method public onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->m_bVisible:Z

    .line 481
    return v0
.end method
