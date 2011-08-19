.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;
.super Ljava/lang/Object;
.source "UiUnit_ToggleButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field m_eCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

.field m_eEvent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

.field m_nBackgroundDrawableId:I

.field m_nButtonDrawableId:I

.field m_nHolderLayoutId:I


# direct methods
.method public constructor <init>(IILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 6
    .parameter "a_nButtonDrawableId"
    .parameter "a_nBackgroundDrawableId"
    .parameter "a_eEvent"
    .parameter "a_eCommand"

    .prologue
    .line 136
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(IILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(IILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V
    .locals 0
    .parameter "a_nButtonDrawableId"
    .parameter "a_nBackgroundDrawableId"
    .parameter "a_eEvent"
    .parameter "a_eCommand"
    .parameter "a_nHolderLayoutId"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_nButtonDrawableId:I

    .line 142
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_nBackgroundDrawableId:I

    .line 143
    iput-object p3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_eEvent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    .line 144
    iput-object p4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_eCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 145
    iput p5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_nHolderLayoutId:I

    .line 146
    return-void
.end method

.method public constructor <init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 6
    .parameter "a_nButtonDrawableId"
    .parameter "a_eEvent"
    .parameter "a_eCommand"

    .prologue
    const/4 v2, 0x0

    .line 126
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(IILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V
    .locals 6
    .parameter "a_nButtonDrawableId"
    .parameter "a_eEvent"
    .parameter "a_eCommand"
    .parameter "a_nHolderLayoutId"

    .prologue
    .line 131
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(IILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 132
    return-void
.end method
