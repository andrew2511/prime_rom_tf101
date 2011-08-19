.class public Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;
.super Ljava/lang/Object;
.source "UiSheetbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetItem"
.end annotation


# instance fields
.field public m_aszSheetName:Ljava/lang/String;

.field public m_bSelected:Z

.field public m_nIndex:I

.field public m_oSheetButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;)V
    .locals 1
    .parameter "a_aszSheetName"
    .parameter "a_oSheetButton"

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;->m_aszSheetName:Ljava/lang/String;

    .line 399
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;->m_oSheetButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar$SheetItem;->m_bSelected:Z

    .line 401
    return-void
.end method
