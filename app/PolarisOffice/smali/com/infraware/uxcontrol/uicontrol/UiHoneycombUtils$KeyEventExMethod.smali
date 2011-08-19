.class final Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;
.super Ljava/lang/Object;
.source "UiHoneycombUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyEventExMethod"
.end annotation


# static fields
.field private static m_fieldMoveEnd:Ljava/lang/reflect/Field;

.field private static m_fieldMoveHome:Ljava/lang/reflect/Field;

.field private static m_fieldPageDown:Ljava/lang/reflect/Field;

.field private static m_fieldPageUp:Ljava/lang/reflect/Field;

.field private static m_methodCtrlPressed:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 476
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_methodCtrlPressed:Ljava/lang/reflect/Method;

    .line 477
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldMoveHome:Ljava/lang/reflect/Field;

    .line 478
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldMoveEnd:Ljava/lang/reflect/Field;

    .line 479
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldPageUp:Ljava/lang/reflect/Field;

    .line 480
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldPageDown:Ljava/lang/reflect/Field;

    .line 486
    :try_start_0
    const-class v0, Landroid/view/KeyEvent;

    const-string v1, "isCtrlPressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_methodCtrlPressed:Ljava/lang/reflect/Method;

    .line 487
    const-class v0, Landroid/view/KeyEvent;

    const-string v1, "KEYCODE_MOVE_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldMoveHome:Ljava/lang/reflect/Field;

    .line 488
    const-class v0, Landroid/view/KeyEvent;

    const-string v1, "KEYCODE_MOVE_END"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldMoveEnd:Ljava/lang/reflect/Field;

    .line 489
    const-class v0, Landroid/view/KeyEvent;

    const-string v1, "KEYCODE_PAGE_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldPageUp:Ljava/lang/reflect/Field;

    .line 490
    const-class v0, Landroid/view/KeyEvent;

    const-string v1, "KEYCODE_PAGE_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldPageDown:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_methodCtrlPressed:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldMoveHome:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldMoveEnd:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldPageUp:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventExMethod;->m_fieldPageDown:Ljava/lang/reflect/Field;

    return-object v0
.end method
